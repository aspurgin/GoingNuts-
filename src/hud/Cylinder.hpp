#ifndef CYLINDER_HPP
#define CYLINDER_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../assets/Mesh.hpp"
#include "../rendering/Renderable.hpp"
#include "../shaders/PhongTextureShader.hpp"
#include "../shaders/FlatTextureShader.hpp"
#include "../assets/Texture.hpp"


class Cylinder : public Renderable {
   private:
      Mesh model;
      PhongTextureShader cshader;
      Texture colorTexture;
      Texture normalTexture;
      glm::vec3 position;

   public:
      Cylinder();
      void render();
      void setModel();
};
#endif