
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if (MSVC)
    add_compile_options(-W4 /XW)
else ()
    add_compile_options(-Wall -Wextra -pedantic -Wno-unused-function -Wconversion -Werror)
    add_compile_options(-Wno-gnu-zero-variadic-macro-arguments)
endif ()

if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    add_compile_options(-fdiagnostics-color=always)
elseif (${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
    add_compile_options(-fcolor-diagnostics)
endif ()
