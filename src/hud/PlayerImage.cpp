#include "PlayerImage.hpp"

PlayerImage::PlayerImage() {
   model = Assets::getMesh(Assets::PLAYER_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = 1.35f;
   scaleY = 1.35f;
   scaleZ = 1.35f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10.8, 2.2, 0);
   this->modelTrans.useModelViewMatrix();
}

PlayerImage::PlayerImage(glm::vec3 position, glm::vec3 scale)
{
   model = Assets::getMesh(Assets::PLAYER_IMAGE_M);
   shaderType = FT_SHADE;
   scaleX = scale.x;
   scaleY = scale.y;
   scaleZ = scale.z;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = position;
   this->modelTrans.useModelViewMatrix();
}

void PlayerImage::render() {
   Renderable::render();
}
