#include "DepthMask.hpp"

DepthMask::DepthMask() {
   model = Assets::getMesh(Assets::DEPTH_MASK_M);
   shaderType = FT_SHADE;
   scaleX = 2.05f;
   scaleY = 3.15f;
   scaleZ = 1.0f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(-10.85, -0.0, 0);
   this->modelTrans.useModelViewMatrix();
}

void DepthMask::render() {
   Renderable::render();
}
