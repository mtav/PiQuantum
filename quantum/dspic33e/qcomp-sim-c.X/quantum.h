/**
 * @file quantum.h
 * 
 * @brief Description: Header file containing all the matrix arithmetic for 
 * simulating a single qubit.
 */


#ifndef QUANTUM_H
#define	QUANTUM_H

#ifdef	__cplusplus
extern "C" {
#endif

#define one_Q15 0.9999694824

#include "p33EP512MU810.h"
#include "xc.h"
  
    /// Basis states
    typedef enum {ZERO, ONE, PLUS, MINUS, iPLUS, iMINUS} State;
    
    /// Basic fractional time
    typedef signed _Fract Q15; 
    
    /// Complex type
    typedef Q15 Complex[2];
    
    /// Matrix4 type
    typedef Q15 CMatrix4[4][4][2];
  
    /// Matrix2 type
    typedef Q15 CMatrix2[2][2][2];

    /// Vector type
    typedef Q15 CVector[2][2];

    /// cvector for 3 qubits 
    /// 2^3 complex numbers  
    typedef Q15 CVector3[8][2];

    /// Create real? X, Z, H
    /// @param X Pauli x matrix
    /// @param Z Pauli z matrix
    /// @param H Hadamard matrix
    void make_ops(Matrix2 X, Matrix2 Z, Matrix2 H);
    
    /// Create complex X, Y, Z and H
    /// @param X Pauli X c-Matrix
    /// @param Z Pauli Z c-matrix
    /// @param H Hadamard c-matrix
    /// @param Y Pauli Y c-matrix
    void make_ops_cmplx(CMatrix2 X, CMatrix2 Y, CMatrix2 Z, CMatrix2 H);
    
    /// Initialise a real state vector
    /// @param V vector
    /// @param s state 
    /// @return nothing
    void init_state(Vector V, State s);
    
    /// Initialise a complex state vector
    /// @param V complex vector
    /// @param s complex state
    /// @return returns 0
    int init_state_cmplx(CVector V, State s);
  
    /// 2x2 matrix multiplication
    /// @param M real matrix 
    /// @param V real vector
    void mat_mul(Matrix2 M, Vector V);
    
    /// 2x2 complex matrix multiplication
    /// @param M complex matrix
    /// @param V complex vector
    void mat_mul_cmplx(CMatrix2 M, CVector V);

    /// Add a global phase to make first amplitude positive
    /// @param V vector
    void fix_phase(Vector V);
    
    /// Add a global phase to make first complex amplitude positive
    /// @note This only works for certain states (zero, one, plus, minus, etc.)
    /// @param V complex vector
    void fix_phase_cmplx(CVector V);
    
    /// Clean the state: return the closest state out of
    /// 0>, |1>, |+> and |->
    /// @param V real vector 
    void clean_state(Vector V);
    
    /// Clean the state: return the closest state out of 
    /// |0>, |1>, |+> , |->, |D> and |A>
    /// @param V complex vector
    void clean_state_cmplx(CVector V);
    
    /// Show the qubit state on the LEDs
    /// @param V real vector
    void show_state(Vector V);
    
    /// Show the qubit state on the LEDs
    /// @param V complex vector 
    void show_state_cmplx(CVector V);
   
    // squaring function
    Q15 sq(Q15 num);

#ifdef	__cplusplus
}
#endif

#endif	/* QUANTUM_H */

