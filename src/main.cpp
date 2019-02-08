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

#include "oli-menu-test.cpp"
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

char * menu_main[] = {
    "1. Quantum gates",
    "2. Quantum algorithms",
    "3. Display modes",
    "4. Quantum Error correction",
    "5. QASM - Quantum Assembly language",
    "0. Exit",
};

char * menu_gates[] ={
    "1. Q-NOT",
    "2. Q-PHASE",
    "3. HALF",
    "4. Back",
};

char * menu_algo[] ={
    "1. Addition",
    "2. ...",
};

char * menu_displays[] ={
    "1. Average states",
    "2. Cycle states",
    "3. Measure",
};

char * menu_error_cor[] ={
    "1. What is quantum error correction?",
};

char * menu_qasm[] ={
    "1. Read in QASM code",
    "2. Write out QASM code",
};

/*
void func(char * name) {
  move(20, 0);
  clrtoeol();
  mvprintw(20, 0, "Item selected is : %s", name);
}
*/
int main() {

    int choice=1;

    while(choice != 0){
    // make the menu with choices with 6 options
    choice = start_menu(menu_main, 6);
   
    printf("\nchoice = %d\n", choice);
        
        // gate list functions
        if(choice == 1){
            printf("exit start menu\n");
            choice = start_menu(menu_gates, 4);
        }
        // algorithms
        else if( choice == 2){
            choice = start_menu(menu_algo, 2);
        }
        // display modes
        else if( choice == 3){
            choice = start_menu(menu_displays, 3);
        }
        // Q error correction
        else if( choice == 4){
            choice = start_menu(menu_error_cor, 1);
        }
        // QASM
        else if ( choice == 5){
            choice = start_menu(menu_qasm, 2);
        }

    }
   // }
}

