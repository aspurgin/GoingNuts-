#include "StartScreen.hpp"

StartScreen::StartScreen() {
   model = Assets::getMesh(Assets::START_SCREEN_M);
   shaderType = FT_SHADE;
   scaleX = 2.2f;
   scaleY = 3.4f;
   scaleZ = 2.0f;
   colorTexture = Assets::getTexture(Assets::LEVEL_MAP_T);
   this->position = glm::vec3(0,-0.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void StartScreen::render() {
   Renderable::render();
}
