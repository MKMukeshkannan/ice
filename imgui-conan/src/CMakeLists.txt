find_package(rapidcsv REQUIRED)
find_package(OpenXLSX REQUIRED)
find_package(imgui)
find_package(glfw3)
find_package(glew)
find_package(OpenGL)

add_executable(${PROJECT_NAME} 
                ./main.cpp 
                ./bindings/imgui_impl_glfw.cpp
                ./bindings/imgui_impl_glfw.h
                ./bindings/imgui_impl_opengl3.cpp
                ./bindings/imgui_impl_opengl3.h
                ./bindings/imgui_impl_opengl3_loader.h)
target_include_directories(${PROJECT_NAME} PRIVATE .)
target_compile_definitions(${PROJECT_NAME} PUBLIC IMGUI_IMPL_OPENGL_LOADER_GLEW)
target_link_libraries(${PROJECT_NAME} OpenGL::GL rapidcsv::rapidcsv OpenXLSX::OpenXLSX imgui::imgui GLEW::GLEW glfw  "-framework Cocoa" "-framework IOKit" "-framework CoreFoundation")

