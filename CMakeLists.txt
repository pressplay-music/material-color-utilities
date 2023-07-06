cmake_minimum_required(VERSION 3.24)

project(material-color-utilities)

add_library(${PROJECT_NAME} STATIC
    cpp/palettes/tones.cc
    cpp/cam/cam.cc
    cpp/cam/hct.cc
    cpp/cam/hct_solver.cc
    cpp/utils/utils.cc
)

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

