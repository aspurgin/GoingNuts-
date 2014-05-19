#ifndef _RENDERABLE
#define _RENDERABLE

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../shaders/LightMapShader.hpp"
#include "../assets/Assets.hpp"

class Renderable {
   protected:
      int mat;
      float scale;
      float scaleX, scaleY, scaleZ;
      float ang;
      glm::vec3 position;
      RenderingHelper modelTrans;
      LightMapShader lmShader;
      Mesh model;
   public:
      Renderable();
      virtual void render() = 0;
      virtual void setModel() = 0;
      void renderLightMap();
};
#endif