#ifndef _RENDERABLE
#define _RENDERABLE

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtx/transform.hpp> 

#include "../helperFiles/GLSL_helper.h"
#include "../helperFiles/MStackHelp.h"
#include "../assets/Mesh.hpp"
#include "../shaders/LightMapShader.hpp"
#include "../assets/Assets.hpp"
#include "../assets/Texture.hpp"
#include "Camera.hpp"
#include "Light.hpp"

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
      void csRender(glm::mat4);
      void ctsRender(glm::mat4);
      void psRender(glm::mat4);
      void ptsRender(glm::mat4);
      void ftsRender(glm::mat4);
      void csRender();
      void ctsRender();
      void psRender();
      void ptsRender();
      void ftsRender();
      void updateSpin();
   public:
      RenderType type;
      int typeColor;
      Renderable();
      virtual void render(glm::mat4);
      virtual void render();// = 0;
      void renderBloom(glm::mat4);
      void renderBloom();
      void bRenderBright(glm::mat4);
      void bRenderBright();
      void bRenderBlurHor(glm::mat4);
      void bRenderBlurHor();
      void bRenderBlurVer(glm::mat4);
      void bRenderBlurVer();
      void bRenderComposite(glm::mat4);
      void bRenderComposite();
      //virtual void setModel();// = 0;
      void renderLightMap(glm::mat4);
      void renderLightMap();
      virtual void setPosition(glm::vec3);
      void setScale(float, float, float);
      void setSpin(bool);
      void setShaderType(int type);
};
#endif