#include "Points.hpp"

Points::Points() {
   model = Assets::getMesh(Assets::POINTS_M);
   shaderType = FT_SHADE;
   scaleX = 0.275f;
   scaleY = 0.275f;
   scaleZ = 0.275f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10, -1.3, 0);
   this->modelTrans.useModelViewMatrix();
}

void Points::render() {
   Renderable::render();
}
