cmake_minimum_required(VERSION 2.6)

project(mqttmpd)
set (VERSION_MAJOR 1)
set (VERSION_MINOR 0)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

find_package(Mosquitto REQUIRED)

add_executable(mqttmpd mqttmpd.c)
include_directories(${MOSQUITTO_INCLUDE_DIR})
target_link_libraries(mqttmpd ${MOSQUITTO_LIBRARIES})

install (TARGETS mqttmpd DESTINATION bin)

