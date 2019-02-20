#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libpython-static" for configuration "Debug"
set_property(TARGET libpython-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libpython-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpython3.7.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libpython-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_libpython-static "${_IMPORT_PREFIX}/lib/libpython3.7.a" )

# Import target "python" for configuration "Debug"
set_property(TARGET python APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(python PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/python"
  )

list(APPEND _IMPORT_CHECK_TARGETS python )
list(APPEND _IMPORT_CHECK_FILES_FOR_python "${_IMPORT_PREFIX}/bin/python" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
