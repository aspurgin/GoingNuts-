#ifndef __LIGHT_MAP_SHADER_H
#define __LIGHT_MAP_SHADER_H

#include <GL/glew.h>

#ifdef __unix__

#include <GLFW/glfw3.h>
#endif

#ifdef _WIN32
//#pragma comment(lib, "glew32.lib")


#endif

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include "../helperFiles/GLSL_helper.h"

class LightMapShader {
   public:
      GLint h_aPosition;
      GLint h_uModelMatrix;
      GLint h_uViewMatrix;
      GLint h_uProjMatrix;
      int shadeProg;
      LightMapShader();

};

#endif