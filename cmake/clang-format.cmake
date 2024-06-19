find_program(CLANG_FORMAT clang-format)

if(NOT CLANG_FORMAT)
    message(AUTHOR_WARNING "clang-format was not found, code format and format check targets are inaccessible")
else()
    message(STATUS "clang-format was found, 'clang-format' and 'clang-format-check' targets can be used")

    add_custom_target(clang-format COMMAND ${CLANG_FORMAT}
        --style=file
        -i
        ${ALL_FILES}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        USES_TERMINAL
        COMMENT "Formatting code with Clang-Format"
    )

    add_custom_target(clang-format-check COMMAND ${CLANG_FORMAT}
        --style=file
        --dry-run
        --Werror
        ${ALL_FILES}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        USES_TERMINAL
        COMMENT "Checking code format with Clang-Format"
    )

endif()
