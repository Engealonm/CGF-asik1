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
