# - Try to find the LIBFFTW3 library
# Once done this will define
#
#  LIBFFTW3_FOUND
#  LIBFFTW3_INCLUDE_DIR
#  LIBFFTW3_FLOAT_LIBRARY       Use this if you need single point precision
#  LIBFFTW3_DOUBLE_LIBRARY      Use this if you need double precision
#  LIBFFTW3_LDOUBLE_LIBRARY     Use this for long double precision


find_library(_LIBFFTW3_LIBRARY NAMES fftw3 libfftw3-3 libfftw3f-3 libfftw3l-3)
find_path(LIBFFTW3_INCLUDE_DIR fftw3.h)

find_library(LIBFFTW3_FLOAT_LIBRARY fftw3f libfftw3f-3)
find_library(LIBFFTW3_DOUBLE_LIBRARY fftw3 libfftw3-3)
find_library(LIBFFTW3_LDOUBLE_LIBRARY fftw3l libfftw3l-3)

if(_LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
    set(LIBFFTW3_FOUND TRUE)
    message(STATUS "Found libfftw3 ${LIBFFTW3_LIBRARY}")
else(_LIBFFTW3_LIBRARY AND LIBFFTW3_PLUGIN_PATH)
    message(STATUS "Could not find libfftw3, get it http://www.fftw.org/")
endif(_LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
