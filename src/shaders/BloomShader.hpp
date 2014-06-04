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

      GLint h_aPositionBlurHor;
      GLint h_uModelMatrixBlurHor;
      GLint h_uViewMatrixBlurHor;
      GLint h_uProjMatrixBlurHor;
      GLint h_myTextureSamplerBlurHor;

      GLint h_aPositionBlurVer;
      GLint h_uModelMatrixBlurVer;
      GLint h_uViewMatrixBlurVer;
      GLint h_uProjMatrixBlurVer;
      GLint h_myTextureSamplerBlurVer;

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
      int shadeProgBlurHor;
      int shadeProgBlurVer;
      int shadeProgComposite;

      BloomShader();
      void setMaterial(int);
};

#endif
