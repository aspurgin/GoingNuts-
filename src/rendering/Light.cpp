#include "Light.hpp"

Light::Light() {
   position = glm::vec3(3.0f, 2.0f, 6.0f);

   color = glm::vec3(1.0f, 1.0f, 1.0f);
   lightCam = Camera(position, position + glm::vec3(0.0, 0.0, -6.0), glm::vec3(0, 1, 0));
}

void Light::setPosition(glm::vec3 pos) {
	position = pos;
	lightCam.setEye(pos);
}

Camera Light::getLightCam() {
	return lightCam;
}