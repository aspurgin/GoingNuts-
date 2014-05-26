#include "GoingNuts.hpp"

GoingNuts::GoingNuts() {
   model = Assets::getMesh(Assets::GOING_NUTS_M);
   shaderType = FT_SHADE;
   scaleX = 0.3f;
   scaleY = 0.3f;
   scaleZ = 0.3f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11, 8, 0);
   this->modelTrans.useModelViewMatrix();
}

void GoingNuts::render() {
   Renderable::render();
}
