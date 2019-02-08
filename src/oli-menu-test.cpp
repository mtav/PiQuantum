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
#include <string.h>
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

int end_val=0;

int func(char * name) {
    move(20, 0);
    clrtoeol();
    mvprintw(20, 0, "Item selected is : %s", name);
    printf("%c", name[0]);
    // the function returns first char of the string option chosen which 
    // then is used to change screen in main!
    //end_val = (int) name[0];
    return name[0];
}


int start_menu(char * choices[], int n_choices){


    ITEM ** my_items;
    MENU * my_menu;
    WINDOW *my_menu_win;
    int i;
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
    //n_choices = ARRAY_SIZE(choices);
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

    //start of new
    /* Set menu option not to show the description */
    menu_opts_off(my_menu, O_SHOWDESC);

    /* Create the window to be associated with the menu */
    my_menu_win = newwin(10, 70, 4, 4);
    keypad(my_menu_win, TRUE);

    /* Set main window and sub window */
    set_menu_win(my_menu, my_menu_win);
    set_menu_sub(my_menu, derwin(my_menu_win, 6, 68, 3, 1));
    set_menu_format(my_menu, 5, 3);
    set_menu_mark(my_menu, " * ");

    /* Print a border around the main
     * window and print a title */
    box(my_menu_win, 0, 0);

    attron(COLOR_PAIR(2));
    mvprintw(LINES - 3, 0, "Use PageUp and PageDown to scroll");
    mvprintw(LINES - 2, 0, "Use Arrow Keys to navigate (F1 to Exit)");
    attroff(COLOR_PAIR(2));
    refresh();

    /* Post
     * the
     * menu
     * */
    post_menu(my_menu);
    wrefresh(my_menu_win);
    /// end of new

    int c;
    int end_val;
    int selected_op = 0;
    while ( (c = getch()) != KEY_F(1) ){
        switch(c) {
            case KEY_DOWN:
                menu_driver(my_menu, REQ_DOWN_ITEM);
                break;
            case KEY_UP:
                menu_driver(my_menu, REQ_UP_ITEM);
                break;
            case KEY_LEFT:
                menu_driver(my_menu, REQ_LEFT_ITEM);
                break;
            case KEY_RIGHT:
                menu_driver(my_menu, REQ_RIGHT_ITEM);
                break;
            case 10: // Enter
                {	  
                    ITEM * cur = current_item(my_menu);
                    int (* func)(char *) = (int(*)(char*))item_userptr(cur);
                    end_val = func((char *)item_name(cur));
                    pos_menu_cursor(my_menu);
                    /*ITEM *cur;
                      void (*p)(char *);

                      cur = current_item(my_menu);
                      p = item_userptr(cur);
                      p((char *)item_name(cur));
                      pos_menu_cursor(my_menu);
                      */
                    //printf("\n%d\n", end_val);
                    selected_op = 1;
                    break;
                }
                break;
        }
        // update cursor position 
                        wrefresh(my_menu_win);
        if (selected_op == 1) break;
    } // End of while

    // Clean up
    unpost_menu(my_menu);
    for(i = 0; i < n_choices; ++i)
        free_item(my_items[i]);
    free_menu(my_menu);
    endwin();

    if(c == KEY_F(1)) return 0;
    // there is something weird going on with type conversion or something
    // but basically the function returns the number you want +48 so we subtract 
    // 48 so that noone notices...
    else return end_val-48;
}
