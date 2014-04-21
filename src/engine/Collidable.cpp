#include "Collidable.hpp"

Collidable::~Collidable() {}

bool Collidable::isIntersecting(Collidable &other) {
   return box.isIntersecting(other.getBoundingBox());
}

BoundingBox2D Collidable::getBoundingBox() {
   return box;
}

void Collidable::moveBoundingBoxTo(glm::vec2 newCenter) {
   box.moveBoxTo(newCenter);
}

void Collidable::moveBoundingBoxVertical(float distance) {
   box.moveBoxVertical(distance);
}

void Collidable::moveBoundingBoxHorizontal(float distance) {
   box.moveBoxHorizontal(distance);
}
