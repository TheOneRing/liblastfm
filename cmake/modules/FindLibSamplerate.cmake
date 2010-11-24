# - Try to find the libsamplerate library
# Once done this will define
#
#  LIBSAMPLERATE_FOUND
#  LIBSAMPLERATE_LIBRARY
#  LIBSAMPLERATE_INCLUDE_DIR


find_library(LIBSAMPLERATE_LIBRARY NAMES samplerate libsamplerate-0 )
find_path(LIBSAMPLERATE_INCLUDE_DIR samplerate.h)
if(LIBSAMPLERATE_LIBRARY AND LIBSAMPLERATE_INCLUDE_DIR)
    set(LIBSAMPLERATE_FOUND TRUE)
    message(STATUS "Found libsamplerate ${LIBSAMPLERATE_LIBRARY}")
else(LIBSAMPLERATE_LIBRARY AND LIBSAMPLERATE_PLUGIN_PATH)
    message(STATUS "Could not find libsamplerate, get it http://www.mega-nerd.com/SRC/")
endif(LIBSAMPLERATE_LIBRARY AND LIBSAMPLERATE_INCLUDE_DIR)
