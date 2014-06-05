#include "Number3.hpp"

Number3::Number3() {
   model = Assets::getMesh(Assets::Number3_M);
   shaderType = FT_SHADE;
   scaleX = 0.07f;
   scaleY = 0.07f;
   scaleZ = 0.07f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10, -4.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void Number3::render() {
   Renderable::render();
}
