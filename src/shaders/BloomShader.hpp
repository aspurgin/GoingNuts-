#ifndef __BLOOM_SHADER_TEXTURE_H
#define __BLOOM_SHADER_TEXTURE_H

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

class BloomShader {
   public:
      GLint h_aPositionBright;
      GLint h_uModelMatrixBright;
      GLint h_uViewMatrixBright;
      GLint h_uProjMatrixBright;

      GLint h_aPositionBlur;
      GLint h_uModelMatrixBlur;
      GLint h_uViewMatrixBlur;
      GLint h_uProjMatrixBlur;
      GLint h_myTextureSamplerBlur;

      GLint h_myTextureSamplerComposite;
      GLint h_aPositionComposite;
      GLint h_aNormalComposite;
      GLint h_uModelMatrixComposite;
      GLint h_uViewMatrixComposite;
      GLint h_uProjMatrixComposite;
      GLint h_lightPosComposite;
      GLint h_cameraPosComposite;
      GLint h_uMatAmb;
      GLint h_uMatDif;
      GLint h_uMatSpec;
      GLint h_uMatShine;

      int shadeProgBright;
      int shadeProgBlur;
      int shadeProgComposite;

      BloomShader();
      void setMaterial(int);
};

#endif
