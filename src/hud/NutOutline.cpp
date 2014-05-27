#include "NutOutline.hpp"

NutOutline::NutOutline() {
   model = Assets::getMesh(Assets::NUT_OUTLINE_M);
   shaderType = FT_SHADE;
   scaleX = 0.2695f;
   scaleY = 0.2695f;
   scaleZ = 0.2695f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11.002, -7, 0);
   this->modelTrans.useModelViewMatrix();
}

void NutOutline::render() {
   Renderable::render();
}
