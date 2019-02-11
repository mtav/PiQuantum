/** 
 * @file menu.cpp
 * @authors J Scott, O Thomas
 * @date Jan 2019 
 *
 * @detail Implementation of menu classes
 *
 */

#include "menu.hpp"

void OpenSubmenu::execute() {
  oldmenu.hide();
  submenu.show();
  // Set new current menu
  Menu::set_current_menu(&submenu);
}

// The menu that is currently visible
Menu * Menu::current_menu = nullptr;

// Relating to background thread
int Menu::background_flag = 0;
int Menu::background_running = 0;
