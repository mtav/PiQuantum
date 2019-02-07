/** 
 * @file main.cpp
 * @authors J Scott, O Thomas
 * @date Jan 2019 
 *
 * @detail main function for the Raspberry Pi Quantum computer simulator.
 *
 */
#include <stdio.h>
#include <stdlib.h>

// curses.
#include <menu.h>
#include <curses.h>

// no idea what these do/are for...
#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

/** glob
 * ---------------------------------
 * main flags 
 *   
 *   Reset
 *   Display
 *       Disp_Average
 *       Disp_Cycle
 *       Measure
 *   Algorithm
 *       Gates
 *           Single qubit
 *           Two qubit
 *       Subroutines 
 *   Error correction mode
 *   QASM
 *       Read QASM
 *       Write QASM 
 */
char * choices[] = {
    "Choice 1",
    "Choice 2",
    "Choice 3",
    "Choice 4",
    "Choice 5",
    "Choice 6",
    "Choice 7",
    "Exit",
};

void func(char * name) {
  move(20, 0);
  clrtoeol();
  mvprintw(20, 0, "Item selected is : %s", name);
}

int main() {
  ITEM ** my_items;
  MENU * my_menu;
  int n_choices, i;
  ITEM * cur_item;
  
  // Initialize curses 
  initscr();
  start_color();
  // read inputs without carrige return
  cbreak();
  // don't echo inputs to term
  noecho();
  // enable F-keys and Arrow keys
  keypad(stdscr, TRUE);
    
  init_pair(1, COLOR_RED, COLOR_BLACK);
  init_pair(2, COLOR_GREEN, COLOR_BLACK);
  init_pair(3, COLOR_MAGENTA, COLOR_BLACK);

  // Initialize items
  n_choices = ARRAY_SIZE(choices);
  my_items = (ITEM **)calloc(n_choices + 1, sizeof(ITEM *));
    
  for(i = 0; i < n_choices; ++i) {
    // arguments of new_item: _name_ _description_ pointers
    my_items[i] = new_item(choices[i], choices[i]); 
    // Set the user pointer
    set_item_userptr(my_items[i], (void*)func); // what item[i] calls when selected
  }
  my_items[n_choices] = (ITEM *)NULL;

  // Create menu
  my_menu = new_menu((ITEM **)my_items);

  // Post the menu
  mvprintw(LINES - 3, 0, "Press <ENTER> to see the option selected");
  mvprintw(LINES - 2, 0, "Up and Down arrow keys to naviage (F1 to Exit)");
  post_menu(my_menu);
  refresh();

  int c;
  while((c = getch()) != KEY_F(1)) {
    switch(c) {
    case KEY_DOWN:
      menu_driver(my_menu, REQ_DOWN_ITEM);
      break;
    case KEY_UP:
      menu_driver(my_menu, REQ_UP_ITEM);
      break;
    case 10: /* Enter */
      {	  
	ITEM * cur = current_item(my_menu);
        void (*func)(char *) = (void(*)(char*))item_userptr(cur);
	func((char *)item_name(cur));
	pos_menu_cursor(my_menu);
	break;
      }
      break;
    }
  } // End of while

  // Clean up
  unpost_menu(my_menu);
  for(i = 0; i < n_choices; ++i)
    free_item(my_items[i]);
  free_menu(my_menu);
  endwin();
}

