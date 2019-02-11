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

#include "menus/menu_options.hpp"

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

/*
 * make state vector, 
 *
 */

    // do menu stuff - see menu_options.hpp
    int choice=1;
    // menus return 0 for exit condition.
    while(choice != 0){
        // make the menu with choices with 6 options
        choice = func_home_menu();

        switch(choice) {
            case 1:
                // Quantum gates
                func_gate_menu();
                break;
            case 2:
                // algorithms
                func_algo_menu();    
                break; 
            case 3:
                // display modes,
                // needs to update the global var for display options 
                func_display_menu();
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

