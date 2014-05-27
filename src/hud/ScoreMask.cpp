#include "ScoreMask.hpp"

ScoreMask::ScoreMask() {
   model = Assets::getMesh(Assets::SCORE_MASK_M);
   shaderType = FT_SHADE;
   scaleX = 2.05f;
   scaleY = 3.15f;
   scaleZ = 1.0f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(10.85, -0.0, 0);
   this->modelTrans.useModelViewMatrix();
}

void ScoreMask::render() {
   Renderable::render();
}
