#ifndef YOU_LOST_HPP
#define YOU_LOST_HPP

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


class YouLost : public Renderable {
   private:
      Mesh model;
      FlatTextureShader cshader;
      Texture texture;
      glm::vec3 position;

   public:
      YouLost();
      void render();
      void setModel();
};
#endif