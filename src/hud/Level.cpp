#include "Level.hpp"

Level::Level() {
   model = Assets::getMesh(Assets::LEVEL_M);
   shaderType = FT_SHADE;
   scaleX = 0.275f;
   scaleY = 0.275f;
   scaleZ = 0.275f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(-12, 6, 0);
   this->modelTrans.useModelViewMatrix();
}

void Level::render() {
   Renderable::render();
}
