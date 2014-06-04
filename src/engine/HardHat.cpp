#include "HardHat.hpp"

HardHat::HardHat() {}

HardHat::HardHat(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->velocity = 1.f;
   this->model = Assets::getMesh(Assets::HHAT_M);
   this->cshader = Assets::getCShader();
   this->scale = 0.2f;
   this->scaleX = 0.5f;
   this->scaleY = 0.5f;
   this->scaleZ = 0.5f;
   this->mat = 0;
   this->shaderType = C_SHADE;
   this->modelTrans.useModelViewMatrix();
   this->offset = glm::vec3(0.0f,0.0f,0.0f);
   this->floatingUp = true;
   this->type = HARD_HAT_R;
   this->spinning = true;
}

int HardHat::getMovableType() {
   return HARDHAT;
}

bool HardHat::shouldFall() {
	if (fallCounter != -1) {
		return true;
	}
	return false;
}

void HardHat::setWillFall() {
	fallCounter = 0;
}

void HardHat::updateOffset() {
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
}

void HardHat::render() {
   position = center;// + offset;
   Renderable::render();
}

void HardHat::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}

void HardHat::setPosition(glm::vec3 pos) {
   position = pos;
   center = pos;
}

void HardHat::playHitGroundSound() {
   
}
