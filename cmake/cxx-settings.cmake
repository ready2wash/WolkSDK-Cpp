# Set the standard and flags
set(WOLKSDK_CXX_STANDARD cxx_std_17)
set(WOLKSDK_CXX_FLAGS -Wall -Wextra -pedantic -pedantic-errors -Wcast-align
    -Wcast-qual -Wconversion -Wdisabled-optimization -Wfloat-equal -Wformat=2
    -Werror=init-self -Werror=missing-field-initializers -Wmissing-format-attribute
    -Wmissing-noreturn -Werror=pointer-arith -Wno-packed  -Wno-padded -Wredundant-decls
    -Werror=shadow -Werror=stack-protector -Wstrict-aliasing=2 -Wno-switch
    -Werror=unreachable-code -Wunused -Wvariadic-macros -Wwrite-strings
    -Werror=non-virtual-dtor -Werror=return-type)

# Set the tests flags
if (WOLKSDK_BUILD_TESTS)
    list(APPEND WOLKSDK_CXX_FLAGS -fprofile-arcs -ftest-coverage -g)
endif ()
