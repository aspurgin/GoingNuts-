#ifndef __DEBUG_SHADOW_SHADER_H
#define __DEBUG_SHADOW_SHADER_H

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

class DebugShadowShader {
	public:
      GLint h_aPosition;
      GLint h_tPos;
      int shadeProg;

      DebugShadowShader();
};

#endif