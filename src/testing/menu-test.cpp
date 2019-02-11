/** 
 * @file menu-test.cpp
 * @authors J Scott, O Thomas
 * @date Jan 2019 
 *
 * @detail Testing the menu class
 *
 */

#include "menu.hpp"

int main() {

  Action * action1 = new Action("Test 1");
  Action * action2 = new Action("Test 2");
  
  // Create ncurses background
  FancyTerm term;
  
  // Menu object
  Menu menu;

  // Submenu
  Menu submenu;
  Menu another;
  
  // Add menu items
  menu.add_item("Item 1", "Test 1 item added dynamically", action1);
  menu.add_item("Item 2", "Test 2 item added dynamically", action2);
  menu.add_item("Submenu", "Test item added dynamically", submenu);
  
  submenu.add_item("Item 3", "Test item added dynamically", action1);
  submenu.add_item("Item 4", "Test item added dynamically", action1);
  submenu.add_item("Item 1", "Test item added dynamically", action1);
  submenu.add_item("Item 2", "Test item added dynamically", action1);

  submenu.add_item("Submenu", "Go to new menu", another);

  menu.show();

  
  //
  
  // Clear menu
  //menu.clear_all();

  // Add new items
  //menu.add_action_item("New item 1", "Test item added dynamically", action);
  //menu.add_action_item("New item 2", "Test item added dynamically", action);

  
  // Stop program exiting
  while(1);

  delete(action1, action2);
  
}
