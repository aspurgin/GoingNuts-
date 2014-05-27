#include "Cylinder.hpp"

Cylinder::Cylinder() {
   model = Assets::getMesh(Assets::CYLINDER_M);
   shaderType = PT_SHADE;
   scaleX = 0.5f;
   scaleY = 0.5f;
   scaleZ = 0.5f;
   mat = 1;
   normalTexture = Assets::getTexture(Assets::CYLINDER_NORMAL_T);
   colorTexture = Assets::getTexture(Assets::CYLINDER_COLOR_T);
   position = glm::vec3(3.0, 0.0f, 0.0);
   modelTrans.useModelViewMatrix();
   ang = 45.0f;
   axis = glm::vec3(0,0,1);
}

void Cylinder::render() {

   Renderable::render();
}

