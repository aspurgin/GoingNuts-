#include "Energy.hpp"

Energy::Energy() {
   model = Assets::getMesh(Assets::ENERGY_M);
   shaderType = FT_SHADE;
   scaleX = 0.275f;
   scaleY = 0.275f;
   scaleZ = 0.275f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10, -4.5, 0);
   this->modelTrans.useModelViewMatrix();
}

void Energy::render() {
   Renderable::render();
}
