# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appLogin_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appLogin_autogen.dir/ParseCache.txt"
  "appLogin_autogen"
  )
endif()
