# mole_fortran Library Configuration

file(GLOB SOURCES *.f90)
add_library(mole_fortran ${SOURCES})
#target_include_directories(mole_C++ PUBLIC ${ARMADILLO_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIRS} ${OpenBLAS_INCLUDE_DIRS} ${SUPERLU_INCLUDE_DIR})
#target_link_libraries(mole_C++ PUBLIC ${LINK_LIBS})
target_include_directories(mole_fortran PUBLIC ${CMAKE_Fortran_MODULE_DIRECTORY})
target_link_libraries(mole_fortran PUBLIC)

# Installation for mole library
install(TARGETS mole_fortran DESTINATION lib)

# ${CMAKE_INSTALL_PREFIX}/lib for custom installation path. 
# ${CMAKE_BINARY_DIR}/install for cmake build directory installation
