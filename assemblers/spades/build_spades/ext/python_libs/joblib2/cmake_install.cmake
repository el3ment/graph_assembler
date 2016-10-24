# Install script for directory: /graph_assembler/assemblers/spades/ext/src/python_libs/joblib2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/graph_assembler/assemblers/spades")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithAsserts")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/joblib2" TYPE FILE FILES
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/__init__.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/disk.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/format_stack.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/func_inspect.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/functools.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/hashing.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/logger.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/memory.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/my_exceptions.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/numpy_pickle.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/parallel.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/joblib2/testing.py"
    )
endif()

