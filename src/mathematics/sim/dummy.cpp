/**
 * @brief Dummy functions
 *
 * @detail Compile this without link time optimisation and then using the
 * empty function to test the speed of loops
 *
 */

#include "state.hpp"

// Replacement for the cmatvec function
void dummy_cmatvec(const COMPLEX * m, const int i, const int j) { }
