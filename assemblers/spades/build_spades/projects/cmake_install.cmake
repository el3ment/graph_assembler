# Install script for directory: /graph_assembler/assemblers/spades/src/projects

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/graph_assembler/assemblers/spades/build_spades/projects/spades/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/hammer/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/ionhammer/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/dipspades/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/corrector/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/scaffold_correction/cmake_install.cmake")
  include("/graph_assembler/assemblers/spades/build_spades/projects/mph_test/cmake_install.cmake")

endif()

