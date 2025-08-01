# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appRow_Layout_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appRow_Layout_autogen.dir/ParseCache.txt"
  "appRow_Layout_autogen"
  )
endif()
