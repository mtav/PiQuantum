/** 
 * @title State vector
 *
 *
 */

#include <cstdlib>
#include <iostream>
#include <cmath>

typedef double COMPLEX; 

// Print a complex number
void printc(COMPLEX * c) {
  std::cout << "(" << *(c) << ", " << *(c+1) << ")";
}

// Print a complex matrix
void printm(COMPLEX * m) {
  // Print matrix
  for(int i=0; i<2; i++) {
    for(int j=0; j<2; j++) {
      printc(m+(4*i+2*j));
      printf(" ");
    }
    // New row
    std::cout << std::endl;
  }
  // Line break
  std::cout << std::endl;
}

// Using an array of doubles complex type
void cadd(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {
  *(c) = *(a) + *(b);
  *(c+1) = *(a+1) + *(b+1);
}

// Using an array of doubles complex type
void cmul(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {
  *(c) = (*a)*(*b) - (*(a+1))*(*(b+1));
  *(c+1) = (*(a+1))*(*b) + (*a)*(*(b+1));
}

// Complex matrix multiplication using the pointer to
// double complex type
void cmatmul(const COMPLEX * a, const COMPLEX * b, COMPLEX * c) {

  // Create working space
  COMPLEX t0[2], t1[2];

  // Element (0,0)
  cmul(a,b, t0);
  cmul(a+2,b+4, t1);
  cadd(t0, t1, c);
  
  // Element (0,1)
  cmul(a,b+2, t0);
  cmul(a+2,b+6, t1);
  cadd(t0, t1, c+2);
  
  // Element (1,0)
  cmul(a+4,b, t0);
  cmul(a+6,b+4, t1);
  cadd(t0, t1, c+4);
  
  // Element (1,1)
  cmul(a+4,b+2, t0);  
  cmul(a+6,b+6, t1);
  cadd(t0, t1, c+6);
  
}

class Operator {
private:
  
  COMPLEX * M; // Aligned pointer to matrix inside mem
  void * mem; // Memory to be allocated and freed
  
  // Return an aligned pointer to matrix
  COMPLEX * malloc_gate(int size) {
    // Allocated memory
    mem = malloc(size * sizeof(COMPLEX) + 31);
    if(mem == nullptr) {
      std::cerr << "Unable to allocate memory. Exiting";
      exit(1);
    }
    // Get an aligned pointer
    COMPLEX * m = (COMPLEX * ) (((uintptr_t)mem+31) & ~ (uintptr_t)0x1F);
    return m;
  }

  // Initialise matrix and return pointer 
  COMPLEX * make_gate(COMPLEX a000, COMPLEX a001, COMPLEX a010, COMPLEX a011,
		      COMPLEX a100, COMPLEX a101, COMPLEX a110, COMPLEX a111) {
    // Make space
    COMPLEX * m = malloc_gate(8);

    // Initialise elements
    *(m+0) = a000; *(m+1) = a001; *(m+2) = a010; *(m+3) = a011;
    *(m+4) = a100; *(m+5) = a101; *(m+6) = a110; *(m+7) = a111;

    // Return pointer 
    return m;

  }

public:
  Operator() {
    // Make H gate
    M = make_gate(1/std::sqrt(2), 0, 1/std::sqrt(2),
		  0, 1/std::sqrt(2), 0, -1/std::sqrt(2), 0);  
  }
  
  ~Operator() {
    free(mem);
  }
  
  // Return the pointer to the matrix
  COMPLEX * get_mat() const { return M; };

  // Print the matrix
  void print() {
    // Print matrix
    for(int i=0; i<2; i++) {
      for(int j=0; j<2; j++) {
	printc(M+(4*i+2*j));
	printf(" ");
      }
      // New row
      std::cout << std::endl;
    }
    // Line break
    std::cout << std::endl;
  }
  
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

  /**
   * @brief Complex matrix vector multiplication
   *
   * @detail Multiply selected indices of state by the matrix
   * m. Used as a subroutine in single and two qubit operations.
   * 
   */
  void cmatvec(const COMPLEX * m, const int i, const int j) {
    
    // Create working space
    COMPLEX t0[2], t1[2], t2[2], t3[2];

    // True indices
    int a = 2 * i;
    int b = 2 * j;
  
    // Element i
    cmul(m, state+a, t0);
    cmul(m+2, state+b, t1);
    cadd(t0, t1, t2);
   
    // Element j
    cmul(m+4, state+a, t0);
    cmul(m+6, state+b, t1);
    cadd(t0, t1, t3);

    // Write results to state
    *(state+a) = *(t2);
    *(state+a+1) = *(t2+1);
    *(state+b) = *(t3);
    *(state+a+1) = *(t3+1);
  }

  
public:
  
  /**
   * @brief Construct the state vector object
   *
   * @detail Pass the number of qubits as an argument
   */
  State(const int num_qubits)
    : num_qubits(num_qubits), state_length(1 << num_qubits) {

    // Make space
    state = (COMPLEX * ) malloc(2 * state_length * sizeof(COMPLEX));
    if(state == nullptr) {
      std::cerr << "Unable to allocate memory. Exiting" << std::endl;
      exit(1);
    }

    // Initialise to zero state
    * state = 1.0;
    for(int n=1; n < (2 * state_length); n++)
      * (state+n) = 0.0;

    
  }

  /**
   * @brief Free the state vector pointer
   *
   */
  ~State() {
    free(state);
  }


  // Print the state
  void print() {
    
    // Print matrix result
    for(int n=0; n < 8; n+=2) {
      printc(state+n);
      // New row
      std::cout << std::endl;
    }
    // Line break
    std::cout << std::endl;
  }

  /**
   * @brief Single qubit gate
   *
   * @detail Apply a single qubit gate to the state
   * vector. The integer specifies which qubit to 
   * apply to operator to.
   *
   */
  void sgate(const Operator & op, const int n) {
    COMPLEX * U = op.get_mat();    
    int k = (1 << n);
    for(int i=0; i < state_length; i += 2 * k) {
      for(int j=0; j < k; j++) { 
	cmatvec(U, i+j, i+j+k);
      }
    }
  }
  
};

