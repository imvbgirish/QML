# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appWhatsappUI_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appWhatsappUI_autogen.dir/ParseCache.txt"
  "appWhatsappUI_autogen"
  )
endif()
