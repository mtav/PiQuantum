
#include "buttons.hpp"


int main(void){

  //wiringPiSetup();
  
  //Button_driver BD;

    // make a button for qubit 1 on chip_1 and pin_1 
    //Button qubit1(1, 1);

    // check if qubit1 is selected with
    //qubit1.is_pressed();    // returns 0 or 1

    // TWO OPTIONS A CLASS OR DECLARE IN A FUNCTION HERE
    // WANT VECTORS OF BUTTONS, e.g QUBITS, GATES, DISP, FUNCTIONS

    // we want a vector of buttons e.g. for qubits but they need different 
    // constructor arguments as they are on different chips and pins
    // Button_groups();

    // want a vector of buttons for qubits 
    // something like qubit[1] is mapped to chip 1, pin 4
    // qubit[2] chip 1, pin 5 etc
    ///button mapping
    /// 1st byte  
    // 00000100 btn A26-28 -> logical 0
    /// 00000010 btn A7-9   -> logical 6
    /// 00000001 btn A4-6   -> logical 7
    /// 00001000 btn A1-3   -> logical 8 
    /// 
    /// 2nd byte  
    ///// 10000000 btn A23-25 -> logical 1
    /// 00000010 btn A20-22 -> logical 2
    /// 00000100 btn A17-19 -> logical 3
    /// 00000001 btn A13-15 -> logical 4 
    /// 00001000 btn A10-12 -> logical 5

  SpiChannel spi(1, 500000);
  while(1) std::vector<unsigned char> thing = spi.read(1);
  
  //Button btn(0,2);
  //btn.print_pos();
  //while(1) btn.is_pressed();
  
    //std::vector<Button> qubit( {Button(0,2, BD)});
    //  , Button(1,7, BD), Button(1,1, BD),
    // Button(1,2, BD)});

    //   std::vector<Button> func_buttons({Button(1,0, BD), Button(1,3, BD), Button(0,1, BD), 
    //            Button(0,0, BD), Button(0,3, BD)});
  /*

    // checking it is doing what we want, it is!
    std::cout<< "There are " << qubit.size() << " qubit buttons" <<std::endl;
    std::cout << "at positions, " <<std::endl; 
    qubit[0].print_pos();

    // checking reading from spi

    // then we can do
    while(1){
        //        std::cout << "is button pressed? " <<  qubit[1].is_pressed() <<std::endl;
        // or go through list of qubits checking which is selected.
        for (int i = 0; i < static_cast<int>(qubit.size()); i++){
            if (qubit[i].is_pressed() == 1){
                std::cout << "button " << i << " has been pressed" << std::endl;
            }
            else if(qubit[i].is_pressed() == 0){
                std::cout << "no button " <<i <<std::endl;
            }
        }
    }
  */
}
