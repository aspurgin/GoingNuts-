#ifdef __unix__
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#endif

#ifdef _WIN32
//#pragma comment(lib, "glew32.lib")

#include <GL/glew.h>
#endif

#include <iostream>
#include <cstdio>
#include <cstdlib>

#include "../helperFiles/GLSL_helper.h"
#include "PhongShader.hpp"

class ShaderUtils {
   public:
      ShaderUtils();
      PhongShader installPhongShader(const GLchar, const GLchar);
};
