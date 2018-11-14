/**
 * @file quantum.c
 * 
 * @brief Description: Contains matrix and vector arithmetic for simulating 
 * one qubit.
 * 
 */

#include "io.h"                             
#include "quantum.h"

// Complex addition
void cadd(Complex a, Complex b, Complex result) {
    result[0] = a[0] + b[0];
    result[1] = a[1] + b[1];
}

// Complex multiplication
void cmul(Complex a, Complex b, Complex result) {
    result[0] = a[0] * b[0] - a[1] * b[1];
    result[1] = a[0] * b[1] + a[1] * b[0]; 
}

// Create complex X, Y, Z and H
void make_ops_cmplx(CMatrix2 X, CMatrix2 Y, CMatrix2 Z, CMatrix2 H) {
    // Assume the elements are all equal to zero
    X[0][1][0] = 0.9999694824; // X
    X[1][0][0] = 0.9999694824;
    
    Y[0][1][1] = -1.0; // Y
    Y[1][0][1] = 0.9999694824;
    
    Z[0][0][0] = 0.9999694824; // Z
    Z[1][1][0] = -1.0;

    H[0][0][0] = 0.7071067812; // H
    H[0][1][0] = 0.7071067812;
    H[1][0][0] = 0.7071067812;
    H[1][1][0] = -0.7071067812;
}

// Initialise complex state vector
int init_state_cmplx(CVector V, State s) {
    switch(s) {
        case ZERO:
            V[0][0] = 0.9999694824;
            V[0][1] = 0.0;
            V[1][0] = 0.0;
            V[1][1] = 0.0;
            break;
        case ONE:
            V[0][0] = 0.0;
            V[0][1] = 0.0;
            V[1][0] = 0.9999694824;
            V[1][1] = 0.0;
            break;
        case PLUS:
            V[0][0] = 0.7071067812;
            V[0][1] = 0.0;
            V[1][0] = 0.7071067812;
            V[1][1] = 0.0;
            break;
        case MINUS:
            V[0][0] = 0.7071067812;
            V[0][1] = 0.0;
            V[1][0] = -0.7071067812;
            V[1][1] = 0.0;
            break;
        case iPLUS:
            V[0][0] = 0.7071067812;
            V[0][1] = 0.0;
            V[1][0] = 0.0;
            V[1][1] = 0.7071067812;
            break;
        case iMINUS:
            V[0][0] = 0.7071067812;
            V[0][1] = 0.0;
            V[1][0] = 0.0;
            V[1][1] = -0.7071067812;
            break;
    }
    return 0;
}

/// Initialise state to the vacuum (zero apart from the first position)
/// Specify the dimension -- of the matrix, i.e. 2^(number of qubits)
void zero_state(Complex state[], int N) {
    for (int i = 0; i < N; i++) {
        // Loop over the real and imaginary parts
        for (int j = 0; j < 2; j++) {
            state[i][j] = 0.0;
        }
    }
    state[0][0] = ONE_Q15;
}

// 2x2 complex matrix multiplication
void mat_mul_cmplx(CMatrix2 M, CVector V, int i, int j) {
    Complex a, b, c, d;
    cmul(M[0][0],V[i],a); 
    cmul(M[0][1],V[j],b);
    cadd(a,b,c);
    cmul(M[1][0],V[i],a);
    cmul(M[1][1],V[j],b);
    cadd(a,b,d);
    V[i][0] = c[0];
    V[i][1] = c[1];
    V[j][0] = d[0];
    V[j][1] = d[1];
}

// Add a global phase to make first complex amplitude positive
// This only works for certain states (zero, one, plus, minus, etc.)
void fix_phase_cmplx(CVector V) {
    CMatrix2 phase_90 = {{{0}}};
    phase_90[0][0][1] = 0.9999694824;
    phase_90[1][1][1] = 0.9999694824;   
    CMatrix2 phase_270 = {{{0}}};
    phase_270[0][0][1] = -1.0;
    phase_270[1][1][1] = -1.0;    
    CMatrix2 phase_180 = {{{0}}};
    phase_180[0][0][0] = -1.0;
    phase_180[1][1][0] = -1.0;
    if (V[0][0] < -0.1) {
        mat_mul_cmplx(phase_180, V, 0, 1);
    } else if (V[0][1] < -0.1) {
        mat_mul_cmplx(phase_90, V, 0, 1);
    } else if (V[0][1] > 0.1) {
        mat_mul_cmplx(phase_270, V, 0, 1);
    }
}

// Clean the state: return the closest state out of 
// |0>, |1>, |+> , |->, |D> and |A>
void clean_state_cmplx(CVector V) {
    if (V[0][0] > 0.99) {
        init_state_cmplx(V, ZERO);
        // add abs?
    } else if ((V[1][0] > 0.99) || (V[1][0] < -0.99)) {
        init_state_cmplx(V, ONE);
    } else if ((V[1][1] > 0.99) || (V[1][1] < -0.99)) {
        init_state_cmplx(V, ONE);
    } else if ((0.70 < V[0][0]) && (V[0][0] < 0.71)) {
        if (V[1][0] > 0.1) {
            init_state_cmplx(V, PLUS);
        } else if (V[1][0] < -0.1) {
            init_state_cmplx(V, MINUS);
        } else if (V[0][1] > 0.1) {
            init_state_cmplx(V, iPLUS);
        } else {
            init_state_cmplx(V, iMINUS);
        }
    }
}

/**
 * @brief Display the state amplitudes on LEDs
 * @param state Pass in the state vector
 * @param N The total number of qubits
 * 
 * @note Currently the function only displays superpositions using the
 * red and blue colors.
 */
void qubit_display(Complex state[], int N) {
    Q15 zero_amp;
    Q15 one_amp;
    int index;
    int n_max;
    int j_max;

    /// qubit 0, 1, 2, ... N-1
    for (int i = 0; i < N; i++) {
        zero_amp = 0;
        one_amp = 0;
        /// loop over n, 2^(current qubit)
        n_max = pow(2, i);

        /// Loop here for each contribution to the zero and one amplitude
        for (int n = 0; n < n_max; n++) {
            /// 2^(total qbits - current) 
            j_max = pow(2, N-1-i);

            /// loop over j
            for (int j = 0; j < j_max; j++) {
                /// n + j * 2^(i+1)
                index = n + (pow(2, i + 1) * j);
                /// zeros n 
                zero_amp += pow(state[index][0],2);
                /// ones index are always n+1 for zero amps 
                one_amp += pow(state[index + n_max][0],2);
            }
        }
        /// update leds for each qubits average zer0 and one amps
        set_external_led(i, zero_amp, 0, one_amp);
    }
}

/** apply operator
 * @param state state vector containing amplitudes 
 * @param k qubit number to apply 2x2 matrix to
 * @param N total number of qubits in the state
 * @param op 2x2 operator to be applied
 */
void qubit_op(Complex state, int k, int N, CMatrix2 op) {

//Q15 temp1 = 0;
//Q15 temp2 = 0;

// do row 1 of op onto all pairs of state vectors
// e.g. qubit 0, pairs of values are
// 000, 001
// then
// 010, 011
// etc.
//
// op   ( a b ) * ( 000 ) = (temp1)
//      ( c d )   ( 001 )   (temp2)
// temp1 = a(000) + b(001) -> new (000) val
// temp2 = c(000) + d(001) -> new (001) val

int n_max;
int j_max;
int index;

// qubit zero entries are adjacent 2^0
// qubit 1 entries are 2^1 apart etc...

/// loop over n, 2^(current qubit)
n_max = pow(2,k);

    /// Loop here for each contribution to the zero and one amplitude
    for (int n = 0; n < n_max; n++) {
        /// 2^(total qbits - current) 
        j_max = pow(2, 2-k);

        /// loop over j
        for (int j = 0; j < j_max; j++) {
            /// n + j * 2^(i+1)
            index = n + (pow(2, k + 1) * j);
            /// zeros n 
            //zero_amp += pow(state[index][0],2);
            /// ones index are always n+1 for zero amps 
            //one_amp += pow(state[index + n_max][0],2);
            mat_mul_cmplx(op, state, index, index + n_max);
        }
    }
}
