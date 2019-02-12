#include <Eigen/Core>
#include <complex>
#include <iostream>
#include <stdlib.h>

#include "classes.hpp"

// Complex number type
typedef std::complex<double> CD;

// ----------------------- GrAnD dEcLaRaTiOnS -------------------------------

static State_Vectors state(2);

// ----------------------- SiNgLe QuBiT oPeRaToRs ---------------------------
static Operator X(1, {0,1,1,0}, state); 
static Operator Y(1, {0, CD(0,-1), CD(0,1), 0}, state); 
static Operator Z(1, {1,0,0,-1}, state);
static Operator H(1, {1/sqrt(2),1/sqrt(2),1/sqrt(2),-1/sqrt(2)}, state);

// ----------------------- TwO qUbIt OpErAtOrS -------------------------------
static Operator CNOT(2, {0,1,1,0}, state);
static Operator CPHASE(2, {1,0,0,-1}, state);


//static Operators X;

//(1, (Eigen::Matrix2cd() << 
//        0,1,
//        1,0).finished());

/*
// 2x2 single qubit gates
// don't worry about it!

extern Operators X(1);
X.matrix = (Eigen::Matrix2cd() << 
        0,1,
        1,0).finished(); 
*/

/*
static Eigen::Matrix2cd Z = (Eigen::Matrix2cd() << 
        1,0,
        0,-1).finished(); 

static Eigen::Matrix2cd H = (Eigen::Matrix2cd() << 
        1/r2, 1/r2,
        1/r2, 1/r2).finished(); 

// I keep forgetting we don't need these...
// 4x4 two-qubit gates
static Eigen::Matrix4cd CNOT = (Eigen::Matrix4cd() << 
        1, 0, 0, 0,
        0, 1, 0, 0,
        0, 0, 0, 1,
        0, 0, 1, 0).finished(); 

*/
