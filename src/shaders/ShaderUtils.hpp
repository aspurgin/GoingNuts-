#ifndef __SHADER_UTILS_H
#define __SHADER_UTILS_H

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
#include "CellShader.hpp"
#include "CellShaderTexture.hpp"
#include "FlatTextureShader.hpp"
#include "PhongTextureShader.hpp"
#include "DebugShadowShader.hpp"
#include "LightMapShader.hpp"
#include "BloomShader.hpp"

class ShaderUtils {
   public:
      static PhongShader installPhongShader(const GLchar*, const GLchar*);
      static CellShader installCellShader(const GLchar*, const GLchar*);
      static CellShaderTexture installCellShaderTexture(const GLchar*, const GLchar*);
      static FlatTextureShader installFlatTextureShader(const GLchar*, const GLchar*);
      static PhongTextureShader installPhongTextureShader(const GLchar*, const GLchar*);
      static DebugShadowShader installDebugShadowShader(const GLchar*, const GLchar*);
      static LightMapShader installLightMapShader(const GLchar*, const GLchar*);
      static BloomShader installBloomShaders(const GLchar *vBrightShaderName, const GLchar *fBrightShaderName,
                                             const GLchar *vHorBlurShaderName, const GLchar *fHorBlurShaderName,
                                             const GLchar *vVerBlurShaderName, const GLchar *fVerBlurShaderName,
                                             const GLchar *vCompositeShaderName, const GLchar *fCompositeShaderName);
   private:
      ShaderUtils();
};
#endif
