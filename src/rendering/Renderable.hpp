#ifndef _RENDERABLE
#define _RENDERABLE

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"

class Renderable {
   protected:
      int mat;
      float scale;
      float ang;
      RenderingHelper modelTrans;
   public:
      Renderable();
      virtual void render() = 0;
      virtual void setModel() = 0;
};
#endif