# - Try to find the LIBFFTW3 library
# Once done this will define
#
#  LIBFFTW3_FOUND
#  LIBFFTW3_LIBRARY
#  LIBFFTW3_INCLUDE_DIR
#  LIBFFTW3_FLOAT


find_library(LIBFFTW3_LIBRARY NAMES fftw3 libfftw3)
find_path(LIBFFTW3_INCLUDE_DIR fftw3.h)

find_path(LIBFFTW3_FLOAT fftw3.f)

if(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
    set(LIBFFTW3_FOUND TRUE)
    message(STATUS "Found libfftw3 ${LIBFFTW3_LIBRARY}")
else(LIBFFTW3_LIBRARY AND LIBFFTW3_PLUGIN_PATH)
    message(STATUS "Could not find libfftw3, get it http://www.fftw.org/")
endif(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
