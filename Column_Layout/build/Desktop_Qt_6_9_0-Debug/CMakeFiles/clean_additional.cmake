# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appColumn_Layout_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appColumn_Layout_autogen.dir/ParseCache.txt"
  "appColumn_Layout_autogen"
  )
endif()
