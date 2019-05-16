#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cerrno>
#include <cstring>

#include <cstdlib>
#include <vector>

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

    controller_file.open(path, std::ios::binary);

    if(!controller_file)
    {
        std::cerr << std::strerror(errno) << std::endl;
        std::exit(errno);
    }

    std::cout << "read" << path << std::endl;

    // input_event input;
    // char * buffer = new char [24];

   // std::string x;
    while(1)
    {
        std::string in;
        
        //std::string line(24, '\0');

        // controller_file.getline(line, 24);
    
        // controller_file.read(&line[0], 24);
            //std::istringstream iss(line);
            //
        //controller_file >> std::hex >> a;

        const int size = 16;

        std::vector<char> line{0,size};
        
        controller_file.read(&line[0], size);

        std::vector<unsigned int> vals;


        std::vector<int> pos{5,6,7};

        for(auto i : pos)
        {
            vals.push_back(static_cast<unsigned int> (line[i]));
        }

       /* 
        // remove the first 3 timer elements
        vals.erase(vals.begin(), vals.begin()+3);
        // remove 
        vals.erase(vals.begin());

        // more times
        vals.erase(vals.begin()+4,vals.begin()+7);

        vals.erase(vals.begin() + 4, vals.begin() + 7);
*/
        
        for(int i = 0; i < (int)vals.size(); i++ )
        {
            std::cout << vals[i] << " ";
        }
        std::cout << std::endl;

        unsigned int a;
        //while(controller_file >> std::hex >> a)
        //{
         //   line.push_back(a);
        //    std::cout << std::hex << a << std::endl;
       // }

        //controller_file >> std::hex >> a;

        //std::cout << std::hex << a << std::endl;

        //std::cout << std::hex << line[0] << std::endl;
        //std::cout << std::dec << line[0] << std::endl;

        // std::cout << "string size " << line.size() << " value " << line << std::endl;
    
    //    std::cout << std::atoi(line.substr(16, 8).c_str()) << std::endl; 
      //  std::cout << std::atoi(line.substr(20,4).c_str()) << std::endl; 

         // controller_file.read(buffer, 24);
   //     controller_file.read(time_buf,16); 
    //    controller_file.read(type_buf,2); 
    //    controller_file.read(code_buf,2); 
     //   controller_file.read(value_buf,4); 

        // std::string time = std::string(time_buf);
        // std::string type = std::string(type_buf);
        // std::string code = std::string(code_buf);
        // std::string value = std::string(value_buf);

        // 
        // unsigned short type_shrt = (unsigned short) std::strtoul(type_buf, NULL, 0);
        // unsigned short code_shrt = (unsigned short) std::strtoul(code_buf, NULL, 0);

        // unsigned int value_int = (unsigned int) std::strtoul(value_buf, NULL, 0);

        // auto type_shrt = std::strtoul(type_buf, NULL, 0);
        // auto code_shrt = std::strtoul(code_buf, NULL, 0);
        // auto value_int = std::strtoul(value_buf, NULL, 0);
         

        //auto type_shrt = std::atoi(type_buf);
        //auto code_shrt = std::atoi(code_buf);
        //auto value_shrt = std::atoi(value_buf);

        //std::cout 
        //    << time << ", " 
        //    << type_shrt << ", " 
        //    << code_shrt << ", " 
        //    << value_shrt << std::endl;
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
