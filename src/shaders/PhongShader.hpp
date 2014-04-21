#ifndef __PHONG_SHADER_H
#define __PHONG_SHADER_H
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

class PhongShader {
   public:
      GLint h_aPosition;
      GLint h_aNormal;
      GLint h_uModelMatrix;
      GLint h_uViewMatrix;
      GLint h_uProjMatrix;
      GLint h_lightPos;
      GLint h_cameraPos;
      GLint h_uMatAmb;
      GLint h_uMatDif;
      GLint h_uMatSpec;
      GLint h_uMatShine;
      GLint h_lightColor;
      int shadeProg;

      PhongShader();
      void setMaterial(int);
};

#endif
