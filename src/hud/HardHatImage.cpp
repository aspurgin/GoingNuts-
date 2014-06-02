#include "HardHatImage.hpp"

HardHatImage::HardHatImage() {
   model = Assets::getMesh(Assets::HARD_HAT_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = 0.35f;
   scaleY = 0.35f;
   scaleZ = 0.35f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10.8, 2.2, 0);
   this->modelTrans.useModelViewMatrix();
}

HardHatImage::HardHatImage(glm::vec3 position, glm::vec3 scale)
{
   model = Assets::getMesh(Assets::HARD_HAT_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = scale.x;
   scaleY = scale.y;
   scaleZ = scale.z;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = position;
   this->modelTrans.useModelViewMatrix();
}

void HardHatImage::render() {
   Renderable::render();
}
