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

#include "oli-menu-test.cpp"

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

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
    "0. Back",
};

char * menu_algo[] ={
    "1. Addition",
    "2. ...",
    "0. Back",
};

char * menu_displays[] ={
    "1. Average states",
    "2. Cycle states",
    "3. Measure",
    "0. Back",
};

char * menu_error_cor[] ={
    "1. What is quantum error correction?",
    "0. Back",
};

char * menu_qasm[] ={
    "1. Read in QASM code",
    "2. Write out QASM code",
    "0. Back",
};

char * menu_qubits[] ={
    "1. qubit 1",
    "2. qubit 2",
    "3. qubit 3",
    "4. qubit 4",
    "0. Back",
};


int func_gate_menu(void){
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
        int qubit_choice = start_menu(menu_qubits, ARRAY_SIZE(menu_qubits));

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
                int qubit_choice2 = start_menu(menu_qubits, ARRAY_SIZE(menu_qubits));
                printf("CNOT on %d and %d", qubit_choice, qubit_choice2);
                break;
        } // end of choose gate
    }    // clear the title
    mvprintw(0, 0, "\n");
    refresh();
}

int func_algo_menu(void){
    // set text
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
}

int func_display_menu(void){
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
            // return the value for the global array
            return 0;
    }
    // clear text
    mvprintw(0, 0, "\n");
    refresh();
}

int func_error_cor_menu(void){
    int error_cor_choice = start_menu(menu_error_cor, ARRAY_SIZE(menu_error_cor));
}

int func_qasm_menu(void){
    int qasm_choice = start_menu(menu_qasm, ARRAY_SIZE(menu_qasm));
}
