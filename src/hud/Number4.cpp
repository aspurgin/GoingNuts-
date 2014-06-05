#include "Number4.hpp"

Number4::Number4() {
   model = Assets::getMesh(Assets::Number4_M);
   shaderType = FT_SHADE;
   scaleX = 0.07f;
   scaleY = 0.07f;
   scaleZ = 0.07f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10, -4.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void Number4::render() {
   Renderable::render();
}
