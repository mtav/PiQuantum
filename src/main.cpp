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
    "4. C-NOT",
    "5. Back",
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

char * menu_qubits[] ={
    "1. qubit 1",
    "2. qubit 2",
    "3. qubit 3",
    "4. qubit 4",
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
                {
                    // gate list functions
                    gate_choice = start_menu(menu_gates, 5);

                    // then ask for qubit
                    mvprintw(0, 0, "Choose a qubit to act on");
                    refresh();
                    int qubit_choice = start_menu(menu_qubits, 4);

                    switch(gate_choice) {
                        case 1:
                            // Not gate
                            printf("Not gate on qubit %d", qubit_choice);
                            break;
                        case 2:
                            // z gate
                            break;
                        case 3:
                            // H gate
                            break;
                        case 4:
                            // CNOT
                            // 2-qubit gate so ask for second qubit.
                            int qubit_choice2 = start_menu(menu_qubits, 4);
                            printf("CNOT on %d and %d", qubit_choice, qubit_choice2);
                            break;
                    } // end of choose gate
                }

                break;
            case 2:
                // algorithms
                algo_choice = start_menu(menu_algo, 2);
                break; 
            case 3:
                // display modes
                displays_choice = start_menu(menu_displays, 3);
                break;
            case 4:
                // Q error correction
                error_cor_choice = start_menu(menu_error_cor, 1);
                break;
            case 5:
                // QASM
                qasm_choice = start_menu(menu_qasm, 2);
                break;
        }
    }
}

