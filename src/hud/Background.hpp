#ifndef BACKGROUND_HPP
#define BACKGROUND_HPP

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

class Background : public Renderable {
   private:
      Mesh model;
      //CellShaderTexture cshader;
      FlatTextureShader cshader;
      Texture texture;
      unsigned int count;
      glm::vec3 position;

   public:
      Background();
      void render();
      void setModel();
      void set(int number);
};
#endif