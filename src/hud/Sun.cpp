#include "Sun.hpp"

Sun::Sun() {
   model = Assets::getMesh(Assets::SUN_M);
   shaderType = FT_SHADE;
   scaleX = 0.5f;
   scaleY = 0.5f;
   scaleZ = 0.5f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11, -7, 0);
   this->modelTrans.useModelViewMatrix();
}

void Sun::render() {
   Renderable::render();
}
