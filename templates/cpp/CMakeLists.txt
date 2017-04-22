cmake_minimum_required(VERSION 2.8.12)
project(library)

# -----------------------------------------------
# USER DEFINED VARIABLES
# -----------------------------------------------
option(BUILD_DOC         "Build documentation with Doxygen"             ON)
option(BUILD_EXAMPLES    "Build examples to test functionality"         ON)
option(BUILD_SHARED_LIBS "Build shared libraries, set OFF to static"    ON)

# -----------------------------------------------
# BUILD TYPE CONFIGURATION
# -----------------------------------------------
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

# -----------------------------------------------
# COMPILER FLAGS
# -----------------------------------------------
if(${CMAKE_COMPILER_IS_GNUCXX})
  if (${CMAKE_BUILD_TYPE} STREQUAL "Debug")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra -pedantic")
  endif()
  if (${CMAKE_BUILD_TYPE} STREQUAL "Release")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3 -msse4.1 -pthread")
  endif()
endif()

# -----------------------------------------------
# DEPENDENCIES (uncomment what is needed)
# -----------------------------------------------
# find_package(OpenCV REQUIRED)
# find_package(OpenGL REQUIRED)
# find_package(Qt5Quick REQUIRED)
# find_package(Qt5Widgets REQUIRED)

# -----------------------------------------------
# INCLUDE DIRECTORIES (uncomment what is needed)
# -----------------------------------------------
include_directories(include)
# include_directories(${OpenCV_INCLUDE_DIRS})

# -----------------------------------------------
# SHARED LIBS
# -----------------------------------------------
if (BUILD_SHARED_LIBS)
  set(LIB_COMPONENTS ${PROJECT_NAME})
else()
  set(LIB_COMPONENTS ${REQUIRED_LIBRARIES} ${PROJECT_NAME})
endif()

# -----------------------------------------------
# SUBDIRECTORIES
# -----------------------------------------------
add_subdirectory(src)
add_subdirectory(examples)

# -----------------------------------------------
# DOCUMENTATION
# -----------------------------------------------
if(BUILD_DOC)
  find_package(Doxygen)
  if(DOXYGEN_FOUND)
    configure_file(${PROJECT_SOURCE_DIR}/doc/Doxygen/Doxyfile.in ${PROJECT_BINARY_DIR}/doc/Doxyfile @ONLY)
    add_custom_target(${PROJECT_NAME}_doc ALL ${DOXYGEN_EXECUTABLE} ${PROJECT_BINARY_DIR}/doc/Doxyfile)
  endif()
endif()

# -----------------------------------------------
# CONFIGURE FILE
# -----------------------------------------------
configure_file("${PROJECT_SOURCE_DIR}/cmake/config.cmake.in" "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake" @ONLY)
install(FILES "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake" DESTINATION lib/cmake/${PROJECT_NAME}/)

# -----------------------------------------------
# BUILD SUMARY
# -----------------------------------------------
message("")
message("---------------------------------------------")
message(${PROJECT_NAME} " Configuration Summary")
message("")
message("Installation prefix: " ${CMAKE_INSTALL_PREFIX})
message("Build type: " ${CMAKE_BUILD_TYPE})
message("Build with documentation: " ${BUILD_DOC})
message("Build examples: " ${BUILD_EXAMPLES})
message("Build library as shared: " ${BUILD_SHARED_LIBS})
message("---------------------------------------------")
message("")
