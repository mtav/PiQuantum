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
  std::thread background; 
  
  // Probably needs to be static for compatibility with ncurses
  static void func(char * name) {
    move(20, 0);
    clrtoeol();
    mvprintw(20, 0, "Item selected is : %s", name);
  }

  // Handle menu navigation and selection
  void navigate() {
    int c = 0;
    while((c = getch()) != KEY_F(1)) {
      switch(c) {
      case KEY_DOWN:
	menu_driver(menu, REQ_DOWN_ITEM);
	break;
      case KEY_UP:
	menu_driver(menu, REQ_UP_ITEM);
	break;
      case 10: // Enter
	{
	  ITEM * cur = current_item(menu);
	  if(cur == nullptr) break;
	  void (* func)(char *) = (void(*)(char*))item_userptr(cur);
	  func((char *)item_name(cur));
	  pos_menu_cursor(menu);
	  break;
	}
	break;
      }
    } // End of while
  }
    
public:

  // Constructor (called when object is made)
  Menu() : menu_items(1) {

    // Initialize curses 
    initscr();
    start_color();
    // read inputs without carrige return
    cbreak();
    // don't echo inputs to term
    noecho();
    // enable F-keys and Arrow keys
    keypad(stdscr, TRUE);

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

    // Post the menu
    mvprintw(LINES - 3, 0, "Press <ENTER> to see the option selected");
    mvprintw(LINES - 2, 0, "Up and Down arrow keys to naviage (F1 to Exit)");
    post_menu(menu);
    refresh();

    // Thread to handle menu navigation
    background = std::thread(&Menu::navigate, this);
    
  }

  // Add a menu item
  void add_item(const char * name, const char * description, void * action) {

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
      std::cerr << "Error: failed to free menu, already argument" << std::endl;
    }
 
    
    // Add the new item onto the end of menu list
    menu_items.back() = new_item(name, description); // Overwriting nullptr

    // Associate the new action to the last menu item
    set_item_userptr(menu_items.back(), action);

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
    post_menu(menu);
    refresh();
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
      std::cerr << "Error: failed to free menu, already argument" << std::endl;
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
    post_menu(menu);
    refresh();
  }


  
  // Destructor (called when object is deleted)
  ~Menu() {
    unpost_menu(menu);
    free_menu(menu);
    endwin();

  }
};
