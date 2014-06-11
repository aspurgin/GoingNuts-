#include "LevelMapTexture.hpp"

LevelMapTexture::LevelMapTexture() {
   model = Assets::getMesh(Assets::LEVEL_MAP_M);
   shaderType = FT_SHADE;
   scaleX = 2.8f;
   scaleY = 3.2f;
   scaleZ = 2.0f;
   colorTexture = Assets::getTexture(Assets::LEVEL_MAP_T);
   this->position = glm::vec3(0,-0.1, 0);
   this->modelTrans.useModelViewMatrix();
}

void LevelMapTexture::render() {
   Renderable::render();
}
