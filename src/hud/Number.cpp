#include "Number.hpp"

Number::Number() {
   model = Assets::getMesh(Assets::NUMBER_M);
   shaderType = FT_SHADE;
   scaleX = 0.2f;
   scaleY = 0.2f;
   scaleZ = 0.2f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(-11.8, 5.0, 0);
   this->modelTrans.useModelViewMatrix();
}

void Number::render() {
   Renderable::render();
}
