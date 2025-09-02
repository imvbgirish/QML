# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appListViewTaskMVD_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appListViewTaskMVD_autogen.dir/ParseCache.txt"
  "appListViewTaskMVD_autogen"
  )
endif()
