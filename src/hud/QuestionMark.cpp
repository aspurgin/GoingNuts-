#include "QuestionMark.hpp"

QuestionMark::QuestionMark() {
   model = Assets::getMesh(Assets::QUESTION_MARK_M);
   shaderType = FT_SHADE;
   scaleX = 0.3f;
   scaleY = 0.3f;
   scaleZ = 0.3f;
   colorTexture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
   this->position = glm::vec3(11, 2, 0);
   this->modelTrans.useModelViewMatrix();
}

void QuestionMark::render() {
   Renderable::render();
}
