#include "Light.hpp"

Light::Light() {
   position = glm::vec3(3.0f, -1.0f, 6.0f);
   color = glm::vec3(1.0f, 1.0f, 1.0f);
}

void Light::setPosition(glm::vec3 pos) {
	position = pos;
}