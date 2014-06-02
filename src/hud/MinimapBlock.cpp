#include "MinimapBlock.hpp"

MinimapBlock::MinimapBlock(glm::vec3 position, RenderType type, int typeColor) {
   model = Assets::getMesh(Assets::SQUARE_M);
   this->position = position;
   shaderType = PT_SHADE;
   scaleX = 0.35f;
   scaleY = 0.35f;
   scaleZ = 0.35f;

   switch(type){
      case DIRT_BLOCK_R:
         normalTexture = Assets::getTexture(Assets::DIRT_NORMAL_T);
         mat = typeColor;
         break;
      case CRYSTAL_BLOCK_R:
         normalTexture = Assets::getTexture(Assets::CRYSTAL_T);
         mat = 7;
         break;
      case SAND_BLOCK_R:
         normalTexture = Assets::getTexture(Assets::SAND_T);
         mat = 0;
         break;
      case STONE_BLOCK_R:
         normalTexture = Assets::getTexture(Assets::ROCK_NORMAL_T);
         mat = 4;
         break;
      default:
         normalTexture = Assets::getTexture(Assets::CRYSTAL_T);
         break;
   }

   modelTrans.useModelViewMatrix();
}

void MinimapBlock::render() {
   Renderable::render();
}
