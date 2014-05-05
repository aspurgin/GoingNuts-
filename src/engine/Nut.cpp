#include "Nut.hpp"

Nut::Nut() {}

Nut::Nut(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->velocity = 1.f;
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
