#include <iostream>

#include "interface.hpp"

int main() { 

  Led q1({6,0}, {6,2}, {6,1});
  Led q2({6,3}, {6,5}, {6,4});
  Led q3({0,3}, {0,5}, {0,4});
  Led q4({0,0}, {0,2}, {0,1});
  
  Led q5({5,0}, {5,2}, {5,1});
  Led q6({6,6}, {5,3}, {6,7});
  Led q7({0,6}, {1,3}, {0,7});
  Led q8({1,0}, {1,2}, {1,1});

  Led q9({5,7}, {5,5}, {5,6});
  Led q10({4,1}, {5,4}, {4,0});
  Led q11({2,1}, {1,4}, {2,0});
  Led q12({1,7}, {1,5}, {1,6});

  Led q13({4,7}, {4,5}, {4,6});
  Led q14({4,4}, {4,2}, {4,3});
  Led q15({2,4}, {2,2}, {2,3});
  Led q16({2,7}, {2,5}, {2,6});


  
  double a=1,b=0,c=0;

  
  q1.set_rgb(a,b,c);
  q2.set_rgb(a,b,c);
  q3.set_rgb(a,b,c);
  q4.set_rgb(a,b,c);
  q5.set_rgb(a,b,c);
  q6.set_rgb(a,b,c);
  q7.set_rgb(a,b,c);
  q8.set_rgb(a,b,c);
  q9.set_rgb(a,b,c);
  q10.set_rgb(a,b,c);
  q11.set_rgb(a,b,c);
  q12.set_rgb(a,b,c);
  q13.set_rgb(a,b,c);
  q14.set_rgb(a,b,c);
  q15.set_rgb(a,b,c);
  q16.set_rgb(a,b,c);  

  while(1);
  
}
