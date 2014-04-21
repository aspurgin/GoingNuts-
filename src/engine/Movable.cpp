#include "Movable.hpp"

void Movable::setObject(glm::vec3 center, float width, float height) {
   this->center = center;
   this->width = width;
   this->height = height;
   this->box = BoundingBox2D(glm::vec2(center), width, height);
}

bool Movable::isIntersecting(Collidable &other) {
   return this->box.isIntersecting(other.getBoundingBox());
}
