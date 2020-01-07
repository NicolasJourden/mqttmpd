# - Find libmosquitto
# Find the native libmosquitto includes and libraries
#
#  MOSQUITTO_INCLUDE_DIR - where to find mosquitto.h, etc.
#  MOSQUITTO_LIBRARIES   - List of libraries when using libmosquitto.
#  MOSQUITTO_FOUND       - True if libmosquitto found.

find_path(MOSQUITTO_INCLUDE_DIR mosquitto.h
  PATH_SUFFIXES include
  PATHS
    /usr/local
    /usr
)

find_library(
  MOSQUITTO_LIBRARY
  NAMES libmosquitto mosquitto
)

message(STATUS "libmosquitto include dir: ${MOSQUITTO_INCLUDE_DIR}")
message(STATUS "libmosquitto: ${MOSQUITTO_LIBRARY}")
set(MOSQUITTO_LIBRARIES ${MOSQUITTO_LIBRARY})

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MOSQUITTO DEFAULT_MSG MOSQUITTO_LIBRARIES MOSQUITTO_INCLUDE_DIR)
mark_as_advanced(MOSQUITTO_LIBRARIES MOSQUITTO_INCLUDE_DIR)

