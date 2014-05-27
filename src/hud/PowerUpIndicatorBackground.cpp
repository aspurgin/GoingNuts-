#include "PowerUpIndicatorBackground.hpp"

PowerUpIndicatorBackground::PowerUpIndicatorBackground() {
   model = Assets::getMesh(Assets::POWER_UP_BG_M);
   shaderType = FT_SHADE;
   scaleX = 0.4f;
   scaleY = 0.5f;
   scaleZ = 0.4f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11, 2, 0);
   this->modelTrans.useModelViewMatrix();
}

void PowerUpIndicatorBackground::render() {
   Renderable::render();
}
