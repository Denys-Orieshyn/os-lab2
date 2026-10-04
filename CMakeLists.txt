cmake_minimum_required(VERSION 3.10)
project(CalculatorApp CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Створення статичної бібліотеки
add_library(calculator STATIC calculator.cpp)

# Створення виконуваного файлу
add_executable(app main.cpp)

# Лінкування бібліотеки до виконуваного файлу
target_link_libraries(app PRIVATE calculator)
