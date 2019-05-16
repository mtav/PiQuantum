#include <iostream>
#include <fstream>
#include <string>
#include <cerrno>
#include <cstring>

#include <cstdlib>

#include <linux/input.h>

/*
struct input_event {
    struct timeval time;
    unsigned short type;
    unsigned short code;
    unsigned int value; };
*/

int main(void)
{
    std::string path = "/dev/input/js0";

    std::ifstream controller_file;

    controller_file.open(path);

    if(!controller_file)
    {
        std::cerr << std::strerror(errno) << std::endl;
        std::exit(errno);
    }

    std::cout << "read" << path << std::endl;

    input_event input;
    char * buffer = new char [24];

   // std::string x;
    while(1)
    {
        std::string in;
        
        char * time_buf = new char [16];
        char * type_buf = new char [2];
        char * code_buf = new char [2];
        char * value_buf = new char [4];

         // controller_file.read(buffer, 24);
        controller_file.read(time_buf,16); 
        controller_file.read(type_buf,2); 
        controller_file.read(code_buf,2); 
        controller_file.read(value_buf,4); 

        std::cout << (int)code_buf << ", " << (int)value_buf <<  std::endl;
         //std::getline(controller_file, in);

        // read 24 bytes
        // 16 is time
        // 2 is type
        // 2 is code
        // 4 is value 

        /*
         input.time = time_buf;
         input.type = (unsigned short)type_buf;
         input.code = (unsigned short)code_buf;
        input.value = (unsigned int)value_buf;
*/
        //controller_file >> input;
        // if(x != 0)
        {
          //  std::cout << buffer << std::endl;
        }

    }
    return 0;
}
