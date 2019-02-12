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

#include "menu_options.hpp"
#include "math_test.hpp"

#include "menu.hpp"
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

    int choice;
    std::cout << "Enter a choice: \n 0 for no menu, \n 1 for working menu \n 2 for newTM menu"; 
    std::cin >> choice;

    if (choice == 0){
        //////////////////////////////////////////////////////////////////////////////////////
        //              PUT ALL MAIN CODE HERE!

    }
    else if (choice == 1){

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
    else if (choice == 2){
        /*
        // new menu 
        FancyTerm term;

        // -------------------- MaIn MeNu -----------------------------------
        // top level menu 
        Menu main_menu;

        main_menu.add("1. Quantum gates", "", gate_menu);
        main_menu.add("2. Quantum algorithms", "", algo_menu);
        main_menu.add("3. Display modes", "", display_menu);
        main_menu.add("4. Quantum Error Correction", "", error_cor_menu);
        main_menu.add("5. QASM - Quantum Assembly Language", "", qasm_menu);

        // ---------------------- GaTe MeNu ----------------------------------
        Menu gate_menu;

        gate_menu.add("1. X, Quantum NOT", qubit_menu);


        Menu sub_menu_qubits;

        menu_main.add_item("gates", "", func_gate_menu );

        menu_main.add_item("sub", "",sub_menu_qubits ); 

        menu_main.show();

        while(1);
        */

    }
}
