/** 
 * @file menu-test.cpp
 * @authors J Scott, O Thomas
 * @date Jan 2019 
 *
 * @detail Testing the menu class
 *
 */

#include "menu.hpp"

// Test action
void action(char * name) {
  move(20, 0);
  clrtoeol();
  mvprintw(20, 0, "Item selected is : %s", name);
}


int main() {

  // Create ncurses background
  FancyTerm term;
  
  // Menu object
  Menu menu;

  // Add menu items
  //menu.add_submenu_item("Item 1", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 2", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 3", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 4", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 1", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 2", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 3", "Test item added dynamically", (void*)action);
  menu.add_action_item("Item 4", "Test item added dynamically", (void*)action);

  // Clear menu
  menu.clear_all();

  // Add new items
  menu.add_action_item("New item 1", "Test item added dynamically", (void*)action);
  menu.add_action_item("New item 2", "Test item added dynamically", (void*)action);

  
  // Stop program exiting
  while(1);
  
}
