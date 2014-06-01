#include "MinimapBlock.hpp"

MinimapBlock::MinimapBlock(glm::vec3 position) {
   model = Assets::getMesh(Assets::SQUARE_M);
   mat = 7;
   this->position = position;
   normalTexture = Assets::getTexture(Assets::CRYSTAL_T);
   shaderType = PT_SHADE;
   scaleX = 0.25f;
   scaleY = 0.25f;
   scaleZ = 0.25f;
   modelTrans.useModelViewMatrix();
}

void MinimapBlock::render() {
   Renderable::render();
}
