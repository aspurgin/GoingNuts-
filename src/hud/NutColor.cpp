#include "NutColor.hpp"

NutColor::NutColor() {
   model = Assets::getMesh(Assets::NUT_COLOR_M);
   shaderType = FT_SHADE;
   scaleX = 0.275f;
   scaleY = 0.275f;
   scaleZ = 0.275f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11, -7, 0);
   this->modelTrans.useModelViewMatrix();
}

void NutColor::render() {
   Renderable::render();
}
