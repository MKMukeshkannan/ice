add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/model)
find_package(OpenGL REQUIRED)

target_link_libraries(${PROJECT_NAME}
    OpenGL::GL
    glfw
    GLEW
)

# # For ImGui (assuming Nix installs it as imgui)
# find_package(imgui REQUIRED)
# target_link_libraries(${PROJECT_NAME} imgui)
# 
