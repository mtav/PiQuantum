/**
 * @brief Dummy functions header file
 *
 * @detail Compile this without link time optimisation and then using the
 * empty function to test the speed of loops
 *
 */

#ifndef DUMMY_HPP
#define DUMMY_HPP

#include "state.hpp"

typedef double COMPLEX; 

// Replacement for the cmatvec function
void dummy_cmatvec(const COMPLEX * m, const int i, const int j);

#endif
