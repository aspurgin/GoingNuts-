#ifndef DEPTH_WHEEL_HPP
#define DEPTH_WHEEL_HPP

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

class DepthWheel : public Renderable {
   private:
      Mesh model;
      CellShaderTexture cshader;
      //FlatTextureShader cshader;
      Texture texture;
      unsigned int count;
      glm::vec3 position;

   public:
      DepthWheel(int type, glm::vec3 position);
      void render();
      void setModel();
      void set(int number);
};
#endif