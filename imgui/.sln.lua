return {
    gen = "";
    bld = "cmake -s . -b build";
    exe = "cmake --build build && ./build/bin/dtc";
};

