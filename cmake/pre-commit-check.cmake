find_program(PRECOMMIT pre-commit)

if(NOT PRECOMMIT)
    message(AUTHOR_WARNING "pre-commit was not found")
else()
    message(STATUS "pre-commit was found")

    if(EXISTS ${CMAKE_SOURCE_DIR}/.git/hooks/pre-commit)
        message(STATUS "pre-commit is installed")
    else()
        message(AUTHOR_WARNING "pre-commit is NOT set up. Please run \"pre-commit install\"")
    endif()

endif()
