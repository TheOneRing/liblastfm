# This file is copyrighted under the BSD-license for buildsystem files of KDE
# copyright 2010, Patrick von Reth <patrick.vonreth@gmail.com>
#
#
# - Try to find the LIBFFTW3 library
# Once done this will define
#
#  LIBFFTW3_FOUND
#  LIBFFTW3_INCLUDE_DIR
#  LIBFFTW3_LIBRARY       The libfftw3 librarys


find_path(LIBFFTW3_INCLUDE_DIR fftw3.h)

if(LIBFFTW3_USE_FLOAT)
  find_library(LIBFFTW3_LIBRARY fftw3f libfftw3f-3)
endif(LIBFFTW3_USE_FLOAT)

if(LIBFFTW3_USE_DOUBLE)
find_library(LIBFFTW3_DOUBLE_LIBRARY fftw3 libfftw3-3)
endif(LIBFFTW3_USE_DOUBLE)

if(LIBFFTW3_USE_LDOUBLE)
find_library(LIBFFTW3_LDOUBLE_LIBRARY fftw3l libfftw3l-3)
endif(LIBFFTW3_USE_LDOUBLE)

if(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
    set(LIBFFTW3_FOUND TRUE)
    message(STATUS "Found libfftw3 ${LIBFFTW3_LIBRARY}")
else(LIBFFTW3_LIBRARY AND LIBFFTW3_PLUGIN_PATH)
    message(STATUS "Could not find libfftw3, get it http://www.fftw.org/")
endif(LIBFFTW3_LIBRARY AND LIBFFTW3_INCLUDE_DIR)
