# Install script for directory: /graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/pyyaml3" TYPE FILE FILES
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/__init__.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/composer.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/constructor.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/cyaml.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/dumper.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/emitter.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/error.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/events.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/loader.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/nodes.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/parser.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/reader.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/representer.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/resolver.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/scanner.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/serializer.py"
    "/graph_assembler/assemblers/spades/ext/src/python_libs/pyyaml3/tokens.py"
    )
endif()

