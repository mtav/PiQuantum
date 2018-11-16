/**
 * @file algo.h
 *
 * @brief header file for algorithms
 */

#ifndef ALG_H
#define	ALG_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#include "quantum.h"

#define NUM_QUBITS 4
#define STATE_LENGTH 16 // 2^NUM_QUBITS

extern Complex rX[2][2];
extern Complex X[2][2];
extern Complex Y[2][2];
extern Complex Z[2][2];
extern Complex H[2][2];

/// perform single qubit gate 
void gate(Complex op[2][2], int qubit, Complex state[], int num_qubits);

/// perform controlled single qubit gate 
void two_gate(Complex op[2][2], int ctrl, int targ, Complex state[], int num_qubits);

/// swap using 3 cNots
void swap(int q1, int q2, Complex state[], int num_qubits);

/// Toffoli gate
void toffoli_gate(Complex state[]);
    
#ifdef	__cplusplus
}
#endif

#endif	/* ALG_H */

