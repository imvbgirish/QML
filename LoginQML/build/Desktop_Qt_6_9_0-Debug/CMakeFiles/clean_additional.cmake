# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appLoginQML_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appLoginQML_autogen.dir/ParseCache.txt"
  "appLoginQML_autogen"
  )
endif()
