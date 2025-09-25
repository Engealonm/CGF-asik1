# Assignment 1: OpenGL Red Triangle and Blue Square

## Description
This project contains two OpenGL programs:
- `red_triangle.cpp`: Displays a red triangle centered in an 800x600 window.
- `blue_square.cpp`: Displays a blue square centered in an 800x600 window, modified from `red_triangle.cpp`.

Both programs use modern OpenGL 3.3 core profile with GLFW for window management and GLAD for OpenGL function loading. No deprecated OpenGL functions are used.

## Modifications to Create blue_square.cpp
The `blue_square.cpp` program was created by modifying `red_triangle.cpp` with the following changes:
1. Changed the vertex data to define a square with vertices at (-0.4, -0.4), (0.4, -0.4), (0.4, 0.4), (-0.4, 0.4) and blue color (0.0, 0.0, 1.0).
2. Added an Element Buffer Object (EBO) with indices to draw the square using two triangles.
3. Changed the drawing call from `glDrawArrays(GL_TRIANGLES, 0, 3)` to `glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0)` to use the EBO.

## Implementation Steps
1. **Environment Setup**:
   - Initialized GLFW and set OpenGL 3.3 core profile.
   - Created an 800x600 window.
   - Initialized GLAD to load OpenGL functions using `gladLoadGLLoader`.

2. **Red Triangle (red_triangle.cpp)**:
   - Defined vertex data for a triangle with vertices at (-0.5, -0.5), (0.5, -0.5), (0.0, 0.5) and red color (1.0, 0.0, 0.0).
   - Created Vertex Array Object (VAO) and Vertex Buffer Object (VBO) to store vertex data.
   - Set up vertex attributes for position and color.
   - Wrote vertex and fragment shaders to handle position and color.
   - Compiled and linked shaders into a shader program.
   - Implemented a render loop to draw the triangle using `glDrawArrays`.

3. **Blue Square (blue_square.cpp)**:
   - Modified `red_triangle.cpp` to create `blue_square.cpp`.
   - Changed vertex data to define a square with vertices at (-0.4, -0.4), (0.4, -0.4), (0.4, 0.4), (-0.4, 0.4) and blue color (0.0, 0.0, 1.0).
   - Added an Element Buffer Object (EBO) with indices to form two triangles for the square.
   - Changed the drawing call to `glDrawElements` to use the EBO.
   - Reused the same shaders, as they are compatible with both shapes.

4. **GLAD Integration**:
   - Included `glad.c` and `glad/glad.h` in the project, generated from https://glad.dav1d.de/ for OpenGL 3.3 core profile.
   - Replaced GLEW initialization with GLAD initialization using `gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)`.

5. **Makefile**:
   - Created a Makefile to compile both programs with `g++`.
   - Included `glad.c` in the compilation process.
   - Linked GLFW and OpenGL libraries.
   - Added a `clean` target to remove binaries.

6. **README**:
   - Provided instructions for compiling and running the programs.
   - Specified system requirements and dependency installation.
   - Noted the inclusion of GLAD files and how to regenerate them if needed.
