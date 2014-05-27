#ifndef _RENDERABLE
#define _RENDERABLE

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../shaders/LightMapShader.hpp"
#include "../assets/Assets.hpp"
#include "../assets/Texture.hpp"
#include "Camera.hpp"
#include "Light.hpp"
#include "Renderer.hpp"

enum {C_SHADE, CT_SHADE, P_SHADE, PT_SHADE, FT_SHADE, B_SHADE};
enum RenderType {DIRT_BLOCK_R, CRYSTAL_BLOCK_R, HARD_HAT_R, LAVA_BLOCK_R, NUT_R, PLAYER_R, SAND_BLOCK_R, STONE_BLOCK_R, DYNAMITE_R};

class Renderable {
   protected:
      int shaderType;
      int mat;
      float scale;
      float scaleX, scaleY, scaleZ;
      float ang;
      bool spinning;
      Texture colorTexture;
      Texture normalTexture;
      glm::vec3 position;
      glm::vec3 axis;
      RenderingHelper modelTrans;
      LightMapShader lmShader;
      CellShader cshader;
      CellShaderTexture ctshader;
      PhongTextureShader ptshader;
      FlatTextureShader ftshader;
      PhongShader pshader;
      BloomShader bshader;
      Mesh *model;
      void csRender();
      void ctsRender();
      void psRender();
      void ptsRender();
      void bRender();
      void ftsRender();
      void updateSpin();
   public:
      RenderType type;
      int typeColor;
      Renderable();
      virtual void render();// = 0;
      //virtual void setModel();// = 0;
      void renderLightMap();
      virtual void setPosition(glm::vec3);
      void setScale(float, float, float);
      void setSpin(bool);
};
#endif