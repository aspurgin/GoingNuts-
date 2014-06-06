#include "Number9.hpp"

Number9::Number9() {
   model = Assets::getMesh(Assets::Number9_M);
   shaderType = FT_SHADE;
   scaleX = 0.07f;
   scaleY = 0.07f;
   scaleZ = 0.07f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10, -4.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void Number9::render() {
   Renderable::render();
}
