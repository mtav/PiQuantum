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

class Menu {
private:
  ITEM * menu_items[5]; // An array of 5 ITEM pointers
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
  Menu() {

    // Initialize curses 
    initscr();
    start_color();
    // read inputs without carrige return
    cbreak();
    // don't echo inputs to term
    noecho();
    // enable F-keys and Arrow keys
    keypad(stdscr, TRUE);

    // Populate the menu
    menu_items[0] = new_item("Thing1", "Select1"); 
    menu_items[1] = new_item("Thing2", "Select2");
    menu_items[2] = new_item("Thing3", "Select3");
    menu_items[3] = new_item("Thing4", "Select4");
    menu_items[4] = nullptr; // Must be null terminated 

    // Set the functions for each menu entry
    set_item_userptr(menu_items[0], (void*)func);
    set_item_userptr(menu_items[1], (void*)func);
    set_item_userptr(menu_items[2], (void*)func);
    set_item_userptr(menu_items[3], (void*)func);

    // Create new menu
    menu = new_menu(menu_items);
    if(menu == nullptr) {
      std::cerr << "Menu error: failed to create new menu" << std::endl;
    }

    // Post the menu
    mvprintw(LINES - 3, 0, "Press <ENTER> to see the option selected");
    mvprintw(LINES - 2, 0, "Up and Down arrow keys to naviage (F1 to Exit)");
    post_menu(menu);
    refresh();

    // Thread to handle menu navigation
    background = std::thread(&Menu::navigate, this);
    
  }

  // Destructor (called when object is deleted)
  ~Menu() {
    unpost_menu(menu);
    free_menu(menu);
    endwin();

  }
};
