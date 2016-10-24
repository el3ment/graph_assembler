# Install script for directory: /Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/modules

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/pipeline/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/assembly_graph/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/data_structures/sequence/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/math/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/algorithms/path_extend/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/algorithms/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/paired_info/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/stages/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/dev_support/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/io/cmake_install.cmake")
  include("/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/build_spades/modules/data_structures/mph_index/cmake_install.cmake")

endif()

