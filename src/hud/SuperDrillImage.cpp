#include "SuperDrillImage.hpp"

SuperDrillImage::SuperDrillImage() {
   model = Assets::getMesh(Assets::SUPER_DRILL_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = 0.35f;
   scaleY = 0.45f;
   scaleZ = 0.35f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10.9, 2.0, 0);
   this->modelTrans.useModelViewMatrix();
}

SuperDrillImage::SuperDrillImage(glm::vec3 position, glm::vec3 scale)
{
   model = Assets::getMesh(Assets::SUPER_DRILL_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = scale.x;
   scaleY = scale.y;
   scaleZ = scale.z;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = position;
   this->modelTrans.useModelViewMatrix();
}

void SuperDrillImage::render() {
   Renderable::render();
}
