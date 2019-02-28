/** 
 * @title State vector
 *
 *
 */


class State {

typedef double COMPLEX; 

private:

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
   * @brief Construct the state vector object
   *
   * @detail Pass the number of qubits as an argument
   */
  State(const int num_qubits) {
    // Make space
    COMPLEX * state = (COMPLEX * ) malloc(2 * (1 << num_qubits) * sizeof(COMPLEX));
    if(state == nullptr) {
      std::cerr << "Unable to allocate memory. Exiting" << std::endl;
      exit(1);
    }
  }

  /**
   * @brief Free the state vector pointer
   *
   */
  ~State() {
    free(state);
  }



  
};
