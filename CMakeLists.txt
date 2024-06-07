cmake_minimum_required(VERSION 3.28)
project(Graph)

set(CMAKE_CXX_STANDARD 11)

add_executable(Graph main.cpp
        graph.h
        shortest_path.cpp
        functions.cpp
        traverse.cpp
)
