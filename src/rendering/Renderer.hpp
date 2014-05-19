#ifndef __RENDERER_H
#define __RENDERER_H

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>
#include "Camera.hpp"
#include "OrthographicCamera.hpp"
#include "Light.hpp"
#include "../shaders/PhongShader.hpp"
#include "../shaders/CellShaderTexture.hpp"
#include "../shaders/DebugShadowShader.hpp"
#include "../shaders/FlatTextureShader.hpp"
#include "../shaders/ShaderUtils.hpp"
#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../engine/NutGame.hpp"
#include "../hud/Hud.hpp"
#include "Wall.hpp"

class Renderer {
   private:
      void renderWalls();
      void initDebugLightMap();
      Wall left;
      Wall right;
      Wall back;
      GLuint lmDebugPosHandle, lmDebugTHandle;
      DebugShadowShader dSS;
      GLuint fb_tex;
      GLuint fb;
      int shadow_size;
   public:
      Camera camera;
      bool toggle;
      OrthographicCamera orthographicCamera;
      Light light;
      PhongShader pshader;
      CellShader cshader;
      FlatTextureShader ctshader;
      LightMapShader lmShader;
      RenderingHelper modelTrans;
      int winWidth, winHeight;
      NutGame *ngame;
      Hud* hud;
      Mesh squirrel;
      Mesh block;
      Renderer();
      Renderer(int, int, NutGame*, Hud*);
      void initialize();
      void setModel();
      void renderCube(glm::vec3, int, float);
      void renderSquirrel(glm::vec3, int, float);
      void render();


};

#endif