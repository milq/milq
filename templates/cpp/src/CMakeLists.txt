# -----------------------------------------------
# SOURCE FILES
# -----------------------------------------------
set(SRC_FILES Class.cpp)

# -----------------------------------------------
# LIBRARIES (uncomment and use what are needed)
# -----------------------------------------------
# set(REQUIRED_LIBRARIES ${OpenCV_LIBS} ${OPENGL_LIBRARIES} Qt5::Quick Qt5::Widgets)

# -----------------------------------------------
# LINKING AND INSTALLING
# -----------------------------------------------
add_library(${PROJECT_NAME}_lib SHARED ${SRC_FILES})
target_link_libraries(${PROJECT_NAME}_lib ${REQUIRED_LIBRARIES})
set_target_properties(${PROJECT_NAME}_lib PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
install(TARGETS ${PROJECT_NAME}_lib DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include DESTINATION ${CMAKE_INSTALL_PREFIX})
