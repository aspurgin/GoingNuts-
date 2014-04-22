#ifndef __RENDERER_H
#define __RENDERER_H

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>
#include "Camera.hpp"
#include "Light.hpp"
#include "../shaders/PhongShader.hpp"
#include "../shaders/ShaderUtils.hpp"
#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../engine/NutGame.hpp"

class Renderer {
   public:
      Camera camera;
      Light light;
      PhongShader pshader;
      RenderingHelper modelTrans;
      int winWidth, winHeight;
      NutGame ngame;
      Mesh squirrel;
      Mesh block;
      Renderer();
      Renderer(int, int, NutGame);
      void initialize();
      void setModel();
      void renderCube(glm::vec3, int, float);
      void renderSquirrel(glm::vec3, int, float);
      void render();

};

#endif