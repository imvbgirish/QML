# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appMy_StackView_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appMy_StackView_autogen.dir/ParseCache.txt"
  "appMy_StackView_autogen"
  )
endif()
