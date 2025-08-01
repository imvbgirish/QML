# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appLoader_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appLoader_autogen.dir/ParseCache.txt"
  "appLoader_autogen"
  )
endif()
