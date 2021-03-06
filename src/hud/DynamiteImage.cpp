#include "DynamiteImage.hpp"

DynamiteImage::DynamiteImage() {
   model = Assets::getMesh(Assets::DYNAMITE_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = 0.4f;
   scaleY = 0.4f;
   scaleZ = 0.4f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10.9, 2.2, 0);
   this->modelTrans.useModelViewMatrix();
}

DynamiteImage::DynamiteImage(glm::vec3 position, glm::vec3 scale) {
   model = Assets::getMesh(Assets::DYNAMITE_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = scale.x;
   scaleY = scale.y;
   scaleZ = scale.z;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = position;
   this->modelTrans.useModelViewMatrix();
}

void DynamiteImage::render() {
   Renderable::render();
}
