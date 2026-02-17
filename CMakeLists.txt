cmake_minimum_required(VERSION 3.10)
project(DevOpsDemo)

set(CMAKE_CXX_STANDARD 11)

include_directories(include)

# Ana uygulama
add_executable(main_bin src/main.cpp src/calc.cpp)

# Test uygulaması
add_executable(test_bin tests/test_main.cpp src/calc.cpp)
