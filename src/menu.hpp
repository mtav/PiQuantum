/** 
 * @file menu.hpp
 * @authors J Scott, O Thomas
 * @date Jan 2019 
 *
 * @detail Classes for dealing with curses menus
 *
 */

#include <iostream>
#include <menu.h>
#include <curses.h>
#include <thread>
#include <vector>
#include <cerrno>
#include <cstring>

/**
 * @brief Class for managing ncurses
 *
 * @detail 
 */
class FancyTerm {

public:
    // Constructor (called when object is made)
  FancyTerm() {

    // Initialize curses 
    initscr();
    start_color();
    // read inputs without carrige return
    cbreak();
    // don't echo inputs to term
    noecho();
    // enable F-keys and Arrow keys
    keypad(stdscr, TRUE);

  }

  // Destructor
  ~FancyTerm() {
    endwin();
  }  
};

/** 
 * @brief Userptr class
 *
 * @detail Contains data for executing functions when a menu item is
 * selected. It should be cast to void* and past to the set_item_userptr
 * function
 *
 */
class UserPtr {
private:

public:
  virtual void execute() = 0;
};

class Action : public UserPtr {
private:
  const char * name;

public:
  Action(const char * name) : name(name) { }
  
  void execute() {
    move(20, 0);
    clrtoeol();
    mvprintw(20, 0, "Item selected is : %s", name);
  }
};

class Menu;

class OpenSubmenu : public UserPtr {
private:
  Menu & oldmenu;
  Menu & submenu;
public:
  OpenSubmenu(Menu & submenu, Menu & oldmenu)
    : submenu(submenu), oldmenu(oldmenu) {
    std::cout << "Got to here" << std::endl;
  }
  void execute(); // Defined later
};

/**
 * @brief Menu handling class
 *
 * @detail The point of this class is to make menu handling with ncurses easier
 * and more c++ compatible. Making an object of the Menu type will take care 
 * of setting up (and subsequently releasing) ncurses resources. It also 
 * creates a thread which polls getch for characters and handles menu item
 * navigation. 
 *
 */
class Menu {
private:
  std::vector<ITEM * > menu_items;
  MENU * menu;
  static Menu * current_menu; // The menu that is currently visible
  static std::thread background;
  static int background_flag; // Set to one to stop the thread
  std::vector<OpenSubmenu * > submenus; // Holds submenu pointers
  
  // Probably needs to be static for compatibility with ncurses
  static void func(char * name) {
    move(20, 0);
    clrtoeol();
    mvprintw(20, 0, "Item selected is : %s", name);
  }


  // Free the menu
  void remove() {
    int result = free_menu(menu);    
    if(result == E_SYSTEM_ERROR) {
      std::cerr << "Error: failed to free menu, system error" << std::endl;
      std::cerr << strerror(errno) << std::endl;
    } else if(result == E_BAD_ARGUMENT) {
      std::cerr << "Error: failed to free menu, bad argument" << std::endl;
    } else if(result == E_POSTED) {
      std::cerr << "Error: failed to free menu, already argument" << std::endl;
    }
  }  
  
  /** 
   * @brief Handle menu navigation and selection
   *
   * @detail Every menu shares the same background thread, because only
   * one menu is visible at once, so this method is static.
   *
   */
  static void navigate() {
    int c = 0;
    while((c = getch()) != KEY_F(1)) {
      if(current_menu != nullptr && current_menu -> menu != nullptr) {
	if(background_flag == 1) {
	  background_flag = 0; // Reset the flag
	  return; // from thread
	}
	switch(c) {
	case KEY_DOWN:
	  menu_driver(current_menu -> menu, REQ_DOWN_ITEM);
	  break;
	case KEY_UP:
	  menu_driver(current_menu -> menu, REQ_UP_ITEM);
	  break;
	case 10: { // Enter
	  ITEM * cur = current_item(current_menu -> menu);
	  if(cur == nullptr) break;

	  UserPtr * user_ptr = static_cast<UserPtr*>(item_userptr(cur));
	  user_ptr -> execute();
	  
	  //void (* func)(char *) = (void(*)(char*));
	  //func((char *)item_name(cur));
	  pos_menu_cursor(current_menu -> menu);
	  break;
	}
	  break;
	}
      }
    } // End of while
  }
    
public:

  // Constructor (called when object is made)
  Menu() : menu_items(1) {

    // Need to make sure there is a FancyTerm object before doing
    // any of this
    
    // Initialise empty menu item list
    menu_items[0] = nullptr;

    // Create new menu
    // Since std::vector<ITEM*> stores elements contiguously in
    // memory, so the required ITEM** is a pointer to the first element
    // of menu_items
    menu = new_menu(&menu_items[0]);
    if(menu == nullptr) {
      std::cerr << "Menu error: failed to create new menu" << std::endl;
      std::cerr << strerror(errno) << std::endl;
    }

    // Menu not visible here

    // Use default std::thread constructor

  }

  static void set_current_menu(Menu * new_menu) {
    Menu::current_menu = new_menu;
  }
  
  // This method foregrounds the current menu, overwriting
  // whichever menu is currently in view
  void show() {

    // Post the menu
    mvprintw(LINES - 3, 0, "Press <ENTER> to see the option selected");
    mvprintw(LINES - 2, 0, "Up and Down arrow keys to naviage (F1 to Exit)");
    if(menu != nullptr) post_menu(menu);
    else std::cerr << "Error: no menu to post" << std::endl;
    refresh();

    // Set new current menu
    Menu::set_current_menu(this);

  }

  // This method disables a menus background thread)
  void hide() {

    // Unpost the menu
    if(menu == nullptr) {
      std::cerr << "Error: menu unexpectedly null" << std::endl;
      return;
    }
    unpost_menu(menu);    

    std::cout << "HERE-1" << std::endl;
    
  }

  /** 
   * @brief Add a submenu item
   *
   * @detail Add a menu item which opens another menu when it is selected
   */
  void add_submenu_item(const char * name,
			const char * description,
			Menu & submenu) {

    // It seems like you have to free the menu before messing around
    // with menu_items
    hide();
    remove();
    
    // Add the new item onto the end of menu list
    menu_items.back() = new_item(name, description); // Overwriting nullptr

    // Add a new submenu pointer to the list
    submenus.push_back(new OpenSubmenu(submenu, *this)); // Deleted on clear_all
    
    // Associate the foreground menu action with the item
    set_item_userptr(menu_items.back(), (void*) submenus.back());

    // Add nullptr to the end of the list
    menu_items.push_back(nullptr);
    
    // Create new menu
    // Since std::vector<ITEM*> stores elements contiguously in
    // memory, the required argument ITEM** is a pointer to the first
    // element of menu_items.
    //
    menu = new_menu(&menu_items[0]);
    if(menu == nullptr) {
      std::cerr << "Menu error2: failed to create new menu" << std::endl;
      switch(errno) {
      case E_NOT_CONNECTED:
	std::cerr << "No items are connected to the menu" << std::endl;	
	break;
      case E_SYSTEM_ERROR:
	std::cerr << strerror(errno) << std::endl;
	break;
      default:
	std::cerr << "Unknown error" << std::endl;
      }
    }

    // Don't repost
   
  }
  
  
  /** 
   * @brief Add an action menu item
   *
   * @detail Add a menu item which performs an action (calls a function)
   * when it is selected
   */
  void add_action_item(const char * name,
		       const char * description,
		       Action * action) {

    // It seems like you have to free the menu before messing around
    // with menu_items
    hide();
    remove();
    
    // Add the new item onto the end of menu list
    menu_items.back() = new_item(name, description); // Overwriting nullptr

    // Associate the new action to the last menu item
    set_item_userptr(menu_items.back(), (void*)action);

     // Add nullptr to the end of the list
    menu_items.push_back(nullptr);

    // Create new menu
    // Since std::vector<ITEM*> stores elements contiguously in
    // memory, the required argument ITEM** is a pointer to the first
    // element of menu_items.
    //
    menu = new_menu(&menu_items[0]);
    if(menu == nullptr) {
      std::cerr << "Menu error2: failed to create new menu" << std::endl;
      switch(errno) {
      case E_NOT_CONNECTED:
	std::cerr << "No items are connected to the menu" << std::endl;	
	break;
      case E_SYSTEM_ERROR:
	std::cerr << strerror(errno) << std::endl;
	break;
      default:
	std::cerr << "Unknown error" << std::endl;
      }
    }
    
    // Don't repost the menu
  }

    // Add a menu item
  void clear_all() {

    // It seems like you have to free the menu before messing around
    // with menu_items
    if(menu == nullptr) {
      std::cerr << "Error: menu unexpectedly null" << std::endl;
    }
    unpost_menu(menu);
    int result = free_menu(menu);    
    if(result == E_SYSTEM_ERROR) {
      std::cerr << "Error: failed to free menu, system error" << std::endl;
      std::cerr << strerror(errno) << std::endl;
    } else if(result == E_BAD_ARGUMENT) {
      std::cerr << "Error: failed to free menu, bad argument" << std::endl;
    } else if(result == E_POSTED) {
      std::cerr << "Error: failed to free menu, already posted" << std::endl;
    }

    // Reset the menu_items list
    menu_items.clear();

     // Add nullptr to the end of the list
    menu_items.push_back(nullptr);

    // Create new menu
    // Since std::vector<ITEM*> stores elements contiguously in
    // memory, the required argument ITEM** is a pointer to the first
    // element of menu_items.
    //
    menu = new_menu(&menu_items[0]);
    if(menu == nullptr) {
      std::cerr << "Menu error: failed to create new menu" << std::endl;
      switch(errno) {
      case E_NOT_CONNECTED:
	std::cerr << "No items are connected to the menu" << std::endl;	
	break;
      case E_SYSTEM_ERROR:
	std::cerr << strerror(errno) << std::endl;
	break;
      default:
	std::cerr << "Unknown error" << std::endl;
      }
    }

    
    // Post the menu
    mvprintw(LINES - 3, 0, "Press <ENTER> to see the option selected");
    mvprintw(LINES - 2, 0, "Up and Down arrow keys to naviage (F1 to Exit)");
    show();
    refresh();
  }


  
  // Destructor (called when object is deleted)
  ~Menu() {

    // Clear the menu
    clear_all();
    
    hide();
    remove();
  }
};
