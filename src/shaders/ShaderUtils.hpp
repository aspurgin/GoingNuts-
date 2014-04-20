#ifdef __APPLE__
#include "GLUT/glut.h"
#include <OPENGL/gl.h>
#endif

#ifdef __unix__
#include <GL/glut.h>
#endif

#ifdef _WIN32
#pragma comment(lib, "glew32.lib")

#include <GL\glew.h>
#include <GL\glut.h>
#endif

#include <iostream>
#include <cstdio>
#include <cstdlib>

#include "../helperFiles/GLSL_helper.h"

class ShaderUtils {
   public:
      ShaderUtils();
      int InstallPhongShaders(const GLchar, const GLchar)
};
