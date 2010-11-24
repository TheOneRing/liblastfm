# - Try to find the LIBFFTW3 library
# Once done this will define
#
#  LIBFFTW3_FOUND
#  LIBFFTW3_INCLUDE_DIR
#  LIBFFTW3_LIBRARY         Use this if you don't care which precision libfftw has
#  LIBFFTW3_FLOAT           Use this if you need single point precision
#  LIBFFTW3_LONG            Use this for long double precision


find_library(LIBFFTW3_LIBRARY NAMES fftw3 libfftw3)
find_path(LIBFFTW3_INCLUDE_DIR fftw3.h)

find_library(LIBFFTW3_FLOAT fftw3f libfftw3f)
find_library(LIBFFTW3_LONG fftw3l libfftw3l)

if(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
    set(LIBFFTW3_FOUND TRUE)
    message(STATUS "Found libfftw3 ${LIBFFTW3_LIBRARY}")
else(LIBFFTW3_LIBRARY AND LIBFFTW3_PLUGIN_PATH)
    message(STATUS "Could not find libfftw3, get it http://www.fftw.org/")
endif(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
