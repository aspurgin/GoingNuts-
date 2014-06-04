#include "Background.hpp"


Background::Background() {
   model = Assets::getMesh(Assets::BACKGROUND_M);
   shaderType = FT_SHADE;
   scaleX = 2.085f;
   scaleY = 2.8f;
   scaleZ = 1.0f;
   colorTexture = Assets::getTexture(Assets::BACKGROUND_T);
   position = glm::vec3(0.0,0.0,-7.0);
   this->modelTrans.useModelViewMatrix();
}

void Background::render() {
   Renderable::render();
}

