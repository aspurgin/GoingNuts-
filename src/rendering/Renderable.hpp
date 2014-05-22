#ifndef _RENDERABLE
#define _RENDERABLE

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../shaders/LightMapShader.hpp"
#include "../assets/Assets.hpp"

enum {C_SHADE, CT_SHADE, P_SHADE};

class Renderable {
   protected:
      int shaderType;
      int mat;
      float scale;
      float scaleX, scaleY, scaleZ;
      float ang;
      glm::vec3 position;
      glm::vec3 axis;
      RenderingHelper modelTrans;
      LightMapShader lmShader;
      CellShader cshader;
      CellShaderTexture ctshader;
      PhongShader pshader;
      Mesh model;
      void csRender();
      void ctsRender();
      void psRender();
   public:
      Renderable();
      virtual void render();// = 0;
      //virtual void setModel();// = 0;
      void renderLightMap();
};
#endif