/** 
 * @file menu_options.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail menu options for the terminal interface .
 *
 */

#ifndef menu_options 
#define menu_options

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "curses_menu.hpp"

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

// --------------------- MAIN menu ----------------------
int func_home_menu(void);

// ------------------------ Qubits ---------------------
int func_qubit_menu(void);

// ---------------------- Gates ------------------------
int func_gate_menu(void);

// -------------------- Algorithms ---------------------
int func_algo_menu(void);

// --------------------- Display modes ----------------------
int func_display_menu(void);

// -------------------- Error correction mode ----------------------
int func_error_cor_menu(void);
  
// --------------------------- QASM stuff ----------------------
int func_qasm_menu(void);
  
#endif
