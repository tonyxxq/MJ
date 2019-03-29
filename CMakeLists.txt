cmake_minimum_required(VERSION 2.6)
project(mj2)

add_definitions(-std=c++11)

add_executable(mj2 main.cpp)

install(TARGETS mj2 RUNTIME DESTINATION bin)

target_link_libraries(mj2 z ssl uv uWS)
