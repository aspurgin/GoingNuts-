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

void moveHorizontal(float distance) {
   center.x += distance;
   moveBoundingBoxHorizontal(distance);
}

void moveVertical(float distance) {
   center.y += distance;
   moveBoundingboxVertical(distance);
}
