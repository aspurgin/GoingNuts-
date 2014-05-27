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
   public:
      Cylinder();
      void render();
};
#endif