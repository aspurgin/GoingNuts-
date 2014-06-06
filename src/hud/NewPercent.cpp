#include "NewPercent.hpp"

NewPercent::NewPercent() {
   model = Assets::getMesh(Assets::NEW_PERCENT_M);
   shaderType = FT_SHADE;
   scaleX = 0.12f;
   scaleY = 0.12f;
   scaleZ = 0.12f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11.6, -7.15, 0);
   this->modelTrans.useModelViewMatrix();
}

void NewPercent::render() {
   Renderable::render();
}
