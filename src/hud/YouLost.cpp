#include "YouLost.hpp"

YouLost::YouLost() {
   model = Assets::getMesh(Assets::YOU_LOST_M);
   shaderType = FT_SHADE;
   scaleX = 2.5f;
   scaleY = 2.5f;
   scaleZ = 2.5f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(0, 0, 0);
   this->modelTrans.useModelViewMatrix();
}

void YouLost::render() {
   Renderable::render();
}
