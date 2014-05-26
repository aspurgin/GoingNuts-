#include "Depth.hpp"

Depth::Depth() {
   model = Assets::getMesh(Assets::DEPTH_M);
   shaderType = FT_SHADE;
   scaleX = 0.275f;
   scaleY = 0.275f;
   scaleZ = 0.275f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(-11.8, 3.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void Depth::render() {
   Renderable::render();
}
