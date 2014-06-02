#include "Nut.hpp"

Nut::Nut() {}

Nut::Nut(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->velocity = 1.f;
   this->model = Assets::getMesh(Assets::NUT_M);
   this->shaderType = B_SHADE;
   this->scale = 0.8f;
   scaleX = 0.8f;
   scaleY = 0.8f;
   scaleZ = 0.8f;
   this->ang = 90;
   this->mat = 5;
   this->modelTrans.useModelViewMatrix();
   this->offset = glm::vec3(0.0f,0.0f,0.0f);
   this->floatingUp = true;
   this->type = NUT_R;
}

int Nut::getMovableType() {
   return NUT;
}

bool Nut::shouldFall() {
	if (fallCounter != -1) {
		return true;
	}
	return false;
}

void Nut::setWillFall() {
	fallCounter = 0;
}

void Nut::updateOffset() {
   float height = offset.y;
   if(floatingUp) {
      height += 0.002;
   }
   else {
      height -= 0.002;
   }

   if(height > 0.1) {
      floatingUp = false;
      height -= 0.002;
   }
   else if(height < -0.1) {
      floatingUp = true;
      height += 0.002;
   }

   offset.y = height;
   offset.z = -1.0;
}

void Nut::render() {
   updateOffset();
   position = center + offset;
   Renderable::render();
}
