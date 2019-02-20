# Sanity checks
foreach(varname INPUT_DEF_FILE OUTPUT_DEF_FILE)
  if(NOT DEFINED ${varname})
    message(FATAL_ERROR "Variable '${varname}' is not defined.")
  endif()
endforeach()

file(STRINGS ${INPUT_DEF_FILE} def_lines REGEX "^  (.+)=.+$")
set(stub_def_lines "EXPORTS\n")
foreach(line IN LISTS def_lines)
  string(REGEX MATCH "^  (.+)=.+$" output ${line})
  if(NOT "${output}" STREQUAL "")
    set(stub_def_lines "${stub_def_lines}${CMAKE_MATCH_1}\n")
  endif()
endforeach()
file(WRITE ${OUTPUT_DEF_FILE} "${stub_def_lines}")
