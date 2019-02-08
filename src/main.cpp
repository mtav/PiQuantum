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

//#include "oli-menu-test.cpp"
#include "menu_options.cpp"

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

int main() {

    int choice=1;
    int gate_choice=0;
    int algo_choice=0;
    int displays_choice=0;
    int error_cor_choice=0;
    int qasm_choice=0;

    while(choice != 0){
        // make the menu with choices with 6 options
        choice = start_menu(menu_main, 6);

        switch(choice) {
            case 1:
                func_gate_menu();
                // end of gates submenu
                break;
            case 2:
                // algorithms
                func_algo_menu();    
                // end of algorithms submenu
                break; 
            case 3:
                // display modes,
                // needs to update the global var for display options 
                func_display_menu();
                // end of display choice
                break;
            case 4:
                // Q error correction
                func_error_cor_menu();
                break;
            case 5:
                // QASM
                func_qasm_menu();
                break;
        }
    }
}

