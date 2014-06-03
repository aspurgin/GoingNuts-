#ifndef __RENDERER_H
#define __RENDERER_H

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>
#include "Camera.hpp"
#include "OrthographicCamera.hpp"
#include "Light.hpp"
#include "../shaders/PhongShader.hpp"
#include "../shaders/BloomShader.hpp"
#include "../shaders/PhongTextureShader.hpp"
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
#include "../hud/Cylinder.hpp"

namespace Renderer {
      extern Camera camera;
      extern bool toggle, antiAlias;
      extern OrthographicCamera orthographicCamera;
      extern Light light;
      extern PhongShader pshader;
      extern PhongTextureShader ptshader;
      extern CellShader cshader;
      extern CellShaderTexture cetshader;
      extern FlatTextureShader ftshader;
      extern LightMapShader lmShader;
      extern BloomShader bshader;
      extern RenderingHelper modelTrans;
      extern int winWidth, winHeight;
      extern NutGame *ngame;

      void Renderer(int, int, NutGame*, Hud*);
      void useCShader();
      void useCTShader();
      void usePTShader();
      void initialize();
      void renderCube(glm::vec3, int, float);
      void renderSquirrel(glm::vec3, int, float);
      //void renderNormalMappedCylinder();
      void render();
};
#endif

/*class Renderer {
   private:
      void renderWalls();
      void initDebugLightMap();
      Wall left;
      Wall right;
      Wall back;
      Cylinder* cylinder;
      GLuint lmDebugPosHandle, lmDebugTHandle;
      DebugShadowShader dSS;
      GLuint fb_tex;
      GLuint fb;
      GLuint fbBloom_tex1;
      GLuint fbBloom1;
      int shadow_size;
      std::list<Renderable *> currObjs;
      void renderHud();
      void renderLightShadowMap();
      void renderGame();
      void renderWinLoss();
      void renderDebugShadowMapText();
      void renderNormalMappedCylinder();
      void checkGLError();

   public:
      Camera camera;
      bool toggle, antiAlias;
      OrthographicCamera orthographicCamera;
      Light light;
      PhongShader pshader;
      PhongTextureShader ptshader;
      CellShader cshader;
      CellShaderTexture cetshader;
      FlatTextureShader ftshader;
      LightMapShader lmShader;
      BloomShader bshader;
      RenderingHelper modelTrans;
      int winWidth, winHeight;
      NutGame *ngame;
      Hud* hud;
      //Mesh squirrel;
      //Mesh block;
      Renderer();
      Renderer(int, int, NutGame*, Hud*);
      void initialize();
      void setModel();
      void renderCube(glm::vec3, int, float);
      void renderSquirrel(glm::vec3, int, float);
      void render();
};*/

//#endif