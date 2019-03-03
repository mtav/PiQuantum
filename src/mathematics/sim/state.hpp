/** 
 * @title State vector
 *
 *
 */

#ifndef STATE_HPP
#define STATE_HPP

#include <cstdlib>
#include <iostream>
#include <cmath>
#include <memory>
#include "dummy.hpp"

typedef double COMPLEX; 

class Operator {
private:
  
  COMPLEX * M; // Aligned pointer to matrix inside mem
  void * mem; // Memory to be allocated and freed
  
  // Return an aligned pointer to matrix
  COMPLEX * malloc_gate(int size);
  
  // Initialise matrix and return pointer 
  COMPLEX * make_gate(COMPLEX a000, COMPLEX a001, COMPLEX a010, COMPLEX a011,
		      COMPLEX a100, COMPLEX a101, COMPLEX a110, COMPLEX a111);

public:
  Operator(const double a, const double b, const double c, const double d,
	   const double e, const double f, const double g, const double h);
  ~Operator();
  
  // Return the pointer to the matrix
  COMPLEX * get_mat() const;

  // Print the matrix
  void print();
  
};

class Hadamard : public Operator {
public:
  Hadamard()
    : Operator(1/std::sqrt(2), 0, 1/std::sqrt(2),
	       0, 1/std::sqrt(2), 0, -1/std::sqrt(2), 0) { }
};

class XGate : public Operator {
public:
  XGate()
    : Operator(0, 0, 1, 0, 1, 0, 0, 0) { }
};

class YGate : public Operator {
public:
  YGate()
    : Operator(0, 0, 0, -1, 0, 1, 0, 0) { }
};

class ZGate : public Operator {
public:
  ZGate()
    : Operator(1, 0, 0, 0, 0, 0, -1, 0) { }
};


class State {

private:

  const int num_qubits;
  const int state_length;

  /**
   * @brief Pointer to state 
   *
   * @detail the vector is just an array of doubles, alternating
   * real and imaginary parts. The class stores a pointer to the
   * array
   *
   */
  COMPLEX * state;

  // Aligned memory for store the state
  void * mem;
  
  // Benchmarking variables
  long int bench;
  
  /**
   * @brief Complex matrix vector multiplication
   *
   * @detail Multiply selected indices of state by the matrix
   * m. Used as a subroutine in single and two qubit operations.
   * 
   */
  void cmatvec(const COMPLEX * m, const int i, const int j);
  void cmatvec_inline(const COMPLEX * m, const int i, const int j);
  
  /**
   * @brief Vector of state vector magnitudes and angles
   *
   * @detail Used as a cache during the state averaging routine.
   * Functions should not assume that the data in these arrays is
   * up to date unless they write it themself.
   *
   */ 
  double * magnitudes;
  double * angles;

  /**
   * @brief Allocate space for the state vector
   *
   * @detail Allocate aligned or unaligned space using
   * the second int argument
   *
   */
  void malloc_state(int length, int align);
  
public:
  
  /**
   * @brief Construct the state vector object
   *
   * @detail Pass the number of qubits as an argument
   */
  State(const int num_qubits);
  ~State();

  // Print the state
  void print();

  /**
   * @brief Single qubit gate
   *
   * @detail Apply a single qubit gate to the state
   * vector. The integer specifies which qubit to 
   * apply to operator to.
   *
   * Optimisations:
   * - Only computes the indices that are necessary: there
   *   are no conditional statements.
   */
  void sgate(const Operator & op, const int n);
  void sgate_inline(const Operator & op, const int n);

  
  /**
   * @brief Controlled gate
   *
   * @detail Apply a controlled qubit operation between 
   * control c and target t. The operation is given by
   * op.
   *
   * Currently assumes c < t.
   *
   */
  void cgate(const Operator & op, const int c, const int t);
  
  /**
   * @brief State vector averaging
   *
   * @detail Function for computing a averaged 0 and 1 values for
   * each qubit. The zero value is obtained by summing the magnitude of
   * all the zero amplitudes corresponding to a given qubit. The one value
   * is obtained by summing all the amplitudes corresponding to one for
   * the qubit
   *
   * This implementation caches all the magnitude calculations during the
   * averaging for the first qubit (which traverses the entire state vector
   * once). Subsequent qubit averages look up magnitude values in this 
   * cache vector.
   *
   * The function can compute the average values for a state vector of 
   * 20 qubits in 0.18s (on average).
   *
   */
  void average(double * averages);
    
};

#endif
