#include "SideWall.hpp"

SideWall::SideWall() {
   model = Assets::getMesh(Assets::SIDE_WALL_M);
   this->position = glm::vec3(0.0,0.0,0.0);
   shaderType = PT_SHADE;
   scaleX = 1.0f;
   scaleY = 1.0f;
   scaleZ = 1.0f;
   normalTexture = Assets::getTexture(Assets::SIDE_WALL_T);
   mat = 8;

   modelTrans.useModelViewMatrix();
}

void SideWall::render() {
   Renderable::render();
}
