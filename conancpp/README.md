# CONAN C++ TEMPLATE
this template uses conan package manager for managing c++
packages, this is a sample project that uses boost library
by c++.

# HOW TO USE THIS SHIT
```bash
# TO INSTALL DEPENDECIES
conan install . --output-folder=. --build=missing

# GENERATE FILES
cmake --preset conan-release

# BUILD BINARY
cmake --build ./build/Release/

# EXECUTE THE BINARY
./build/Release/src/MY_SEXY_PROJECT
```
