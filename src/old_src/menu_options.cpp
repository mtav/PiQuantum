/** 
 * @file menu_options.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail menu options for the terminal interface .
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "curses_menu.hpp"
#include "menu_options.hpp"

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


// --------------------- MAIN menu ----------------------
int func_home_menu(void){
    char * menu_main[] = {
        "1. Quantum gates",
        "2. Quantum algorithms",
        "3. Display modes",
        "4. Quantum Error correction",
        "5. QASM - Quantum Assembly language",
        "0. Exit",
    };
    return start_menu(menu_main, ARRAY_SIZE(menu_main));
}

// ------------------------ Qubits ---------------------
int func_qubit_menu(void){
    char * menu_qubits[] ={
        "1. qubit 1",
        "2. qubit 2",
        "3. qubit 3",
        "4. qubit 4",
        "0. Back",
    };
    return start_menu(menu_qubits, ARRAY_SIZE(menu_qubits)); 
}

// ---------------------- Gates ------------------------
int func_gate_menu(void){
    char * menu_gates[] ={
        "1. Q-NOT",
        "2. Q-PHASE",
        "3. HALF",
        "4. C-NOT",
        "0. Back",
    };

    // gate list functions
    mvprintw(0, 0, "Choose a quantum operation");
    refresh();
    int gate_choice = start_menu(menu_gates, ARRAY_SIZE(menu_gates));

    mvprintw(0, 0, "\n");
    refresh();
    if (gate_choice != 0){
        // then ask for qubit
        mvprintw(0, 0, "Choose a qubit to act on");
        refresh();
        int qubit_choice = func_qubit_menu();

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
                int qubit_choice2 = func_qubit_menu();
                printf("CNOT on %d and %d", qubit_choice, qubit_choice2);
                break;
        } // end of choose gate
    }    // clear the title
    mvprintw(0, 0, "\n");
    refresh();
    return gate_choice;
}

// -------------------- Algorithms ---------------------
int func_algo_menu(void){
    char * menu_algo[] ={
        "1. Addition",
        "2. ...",
        "0. Back",
    };   // set text
    mvprintw(0, 0, "Choose one quantum algorithm to run");
    refresh();
    int algo_choice = start_menu(menu_algo, ARRAY_SIZE(menu_algo));
    switch(algo_choice){
        case 1:
            // addition
            break;
    }
    // clear text
    mvprintw(0, 0, "\n");
    refresh();
    return algo_choice;
}

// --------------------- Display modes ----------------------
int func_display_menu(void){

    char * menu_displays[] ={
        "1. Average states",
        "2. Cycle states",
        "3. Measure",
        "0. Back",
    };
    // set text
    mvprintw(0, 0, "Choose a display!");
    refresh();
    int displays_choice = start_menu(menu_displays, ARRAY_SIZE(menu_displays));
    switch(displays_choice){
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
    }
    // clear text
    mvprintw(0, 0, "\n");
    refresh();
    // return the value for the global array
    return displays_choice;
}

// -------------------- Error correction mode ----------------------
int func_error_cor_menu(void){
    char * menu_error_cor[] ={
        "1. What is quantum error correction?",
        "0. Back",
    };

    return start_menu(menu_error_cor, ARRAY_SIZE(menu_error_cor));
}

// --------------------------- QASM stuff ----------------------
int func_qasm_menu(void){
    char * menu_qasm[] ={
        "1. Read in QASM code",
        "2. Write out QASM code",
        "0. Back",
    };
    int qasm_choice = start_menu(menu_qasm, ARRAY_SIZE(menu_qasm));
    // switch and QASM magic here pls
    return qasm_choice;
}
