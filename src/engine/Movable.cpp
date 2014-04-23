#include "Movable.hpp"

Movable::~Movable() {};

void Movable::setObject(glm::vec3 center, float width, float height) {
   this->center = center;
   this->width = width;
   this->height = height;
   this->box = BoundingBox2D(glm::vec2(center), width, height);
}

void Movable::moveTo(glm::vec2 newCenter) {
   center.x = newCenter.x;
   center.y = newCenter.y;
   moveBoundingBoxTo(newCenter);
}

void Movable::moveHorizontal(float distance) {
   center.x += distance;
   moveBoundingBoxHorizontal(distance);
}

void Movable::moveVertical(float distance) {
   center.y += distance;
   moveBoundingBoxVertical(distance);
}

glm::vec3 Movable::getCenter() {
   return center;
}

void Movable::incrementFallCounter(double toAdd) {
   fallCounter += toAdd;
}

bool Movable::willFall() {
   return fallCounter != -1;
}
