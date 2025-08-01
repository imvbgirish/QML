# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appExample4_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appExample4_autogen.dir/ParseCache.txt"
  "appExample4_autogen"
  )
endif()
