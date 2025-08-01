# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appLoadPage_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appLoadPage_autogen.dir/ParseCache.txt"
  "appLoadPage_autogen"
  )
endif()
