# Install script for directory: /Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/spades_pipeline" TYPE FILE FILES
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/hammer_logic.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/process_cfg.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/spades_logic.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/dipspades_logic.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/corrector_logic.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/support.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/options_storage.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/lucigen_nxmate.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/spades_pipeline/truspades" TYPE FILE FILES
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/reference_construction.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/moleculo_filter_contigs.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/break_by_coverage.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/moleculo_postprocessing.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/barcode_extraction.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/generate_quality.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/id_generation.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/launch_options.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/truspades/string_dist_utils.py"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/spades/spades_pipeline/common" TYPE FILE FILES
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/common/alignment.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/common/parallel_launcher.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/common/sam_parser.py"
    "/Users/pjtatlow/projects/bio365/graph_assembler/assemblers/SPAdes-3.9.0/src/spades_pipeline/common/SeqIO.py"
    )
endif()

