#ifndef DEPTH_GUAGE_MASK_HPP
#define DEPTH_GUAGE_MASK_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../assets/Mesh.hpp"
#include "../rendering/Renderable.hpp"
#include "../shaders/CellShaderTexture.hpp"
#include "../shaders/FlatTextureShader.hpp"
#include "../assets/Texture.hpp"

class DepthGuageMask : public Renderable {
   private:
      Mesh *mask1, *mask2;
      //CellShaderTexture cshader;
      FlatTextureShader cshader;
      Texture texture;
      unsigned int count;
      glm::vec3 position;

   public:
      DepthGuageMask();
      void render();
      void setModel();
};
#endif