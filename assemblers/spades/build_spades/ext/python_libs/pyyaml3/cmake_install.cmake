# Install script for directory: /Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/pyyaml3" TYPE FILE FILES
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/__init__.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/composer.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/constructor.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/cyaml.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/dumper.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/emitter.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/error.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/events.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/loader.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/nodes.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/parser.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/reader.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/representer.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/resolver.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/scanner.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/serializer.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/ext/src/python_libs/pyyaml3/tokens.py"
    )
endif()

