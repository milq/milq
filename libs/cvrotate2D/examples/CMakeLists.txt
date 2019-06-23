if (BUILD_EXAMPLES)
  set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")

  set(TARGET_NAME demo)
  add_executable(${TARGET_NAME} ${TARGET_NAME}.cpp)
  target_link_libraries(${TARGET_NAME} ${PROJECT_NAME}_lib)
  install(TARGETS ${TARGET_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
endif()
