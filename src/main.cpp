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

char * choices1[] = {
    "1. Choice 1",
    "2. Choice 2",
    "3. Choice 3",
    "4. Choice 4",
    "5. Choice 5",
    "6. Choice 6",
    "7. Choice 7",
    "8. Exit",
};

char * gates[] ={
    "1. Q-NOT",
    "2. Q-PHASE",
    "3. HALF",
    "4. Back",
};
/*
void func(char * name) {
  move(20, 0);
  clrtoeol();
  mvprintw(20, 0, "Item selected is : %s", name);
}
*/
int main() {

    // make the menu with choices with 8 options
  
    int choice=start_menu(choices1, 8);
    
    // while (choice != 0){
        if(choice == 1){
            printf("exit start menu\n");
    
            choice = start_menu(gates, 4);
        }
   // }
}

