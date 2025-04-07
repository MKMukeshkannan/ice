#include <iostream>
#include <string>
#include "boost/lexical_cast.hpp"


int main() {
  std::string x = "EHLLO" + boost::lexical_cast<std::string>(13);

  std::cout << "HELLO WORLD\n" << x;
  return 0;
};
