# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appListViewPhoneBook_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appListViewPhoneBook_autogen.dir/ParseCache.txt"
  "appListViewPhoneBook_autogen"
  )
endif()
