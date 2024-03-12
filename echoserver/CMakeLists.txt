cmake_minimum_required(VERSION 3.5)

project(echoserver LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Network)

add_executable(echoserver main.cpp mytcpserver.cpp)

target_link_libraries(echoserver  PRIVATE Qt${QT_VERSION_MAJOR}::Core
                                  PRIVATE Qt${QT_VERSION_MAJOR}::Network)

target_compile_features(echoserver PRIVATE cxx_std_11)
