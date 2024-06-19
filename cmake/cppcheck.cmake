find_program(CPPCHECK cppcheck)

if(NOT CPPCHECK)
    message(AUTHOR_WARNING "cppcheck was not found, check target is inaccessible")
else()
    message(STATUS "cppcheck was found, 'cppcheck-check' target can be used")
    cmake_host_system_information(RESULT N_PROC QUERY NUMBER_OF_LOGICAL_CORES)

    add_custom_target(cppcheck-check COMMAND ${CPPCHECK}
        --cppcheck-build-dir=${CMAKE_BINARY_DIR}/cppcheck
        --enable=all
        --error-exitcode=1
        --inconclusive                              # False positive can happen
        --language=c++
        --platform=native
        --library=qt
        -DQ_IMPORT_QML_PLUGIN
        --project=${CMAKE_BINARY_DIR}/compile_commands.json
        -i ${CMAKE_BINARY_DIR}                      # Exclude build from analysis
        -j ${N_PROC}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        USES_TERMINAL
        COMMENT "Checking code with Cppcheck"
    )

endif()
