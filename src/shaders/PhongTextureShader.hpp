#ifndef __PHONG_TEXTURE_SHADER_H
#define __PHONG_TEXTURE_SHADER_H

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

class PhongTextureShader {
   public:
      GLint h_aPosition;
      GLint h_aNormal;
      GLint h_aTangent;
      GLint h_aBitangent;
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
      GLint h_vertexUV;
      GLint h_colorTextureSampler;
      GLint h_normalTextureSampler;
      int shadeProg;

      PhongTextureShader();
      void setMaterial(int);
};

#endif