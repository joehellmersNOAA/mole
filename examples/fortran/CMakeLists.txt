# examples_Fortran Configuration
include_directories("${CMAKE_SOURCE_DIR}/src/fortran")

# Find all .f90 files in the examples directory
file(GLOB EXAMPLE_SOURCES *.f90)

# Create executables for each source file
foreach(EXAMPLE_SOURCE ${EXAMPLE_SOURCES})
    get_filename_component(EXAMPLE_NAME ${EXAMPLE_SOURCE} NAME_WE)
    add_executable(${EXAMPLE_NAME} ${EXAMPLE_SOURCE})
    target_include_directories(mole_fortran PUBLIC ${CMAKE_Fortran_MODULE_DIRECTORY})
    target_link_libraries(${EXAMPLE_NAME} PUBLIC mole_fortran ${LINK_LIBS})
endforeach()
