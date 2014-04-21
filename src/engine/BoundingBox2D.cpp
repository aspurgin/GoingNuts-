#include "BoundingBox2D.hpp"

BoundingBox2D::BoundingBox2D() {}

BoundingBox2D::BoundingBox2D(glm::vec2 center, float width, float height) {
   this->center = center;
   setBox(width, height);
}

BoundingBox2D::BoundingBox2D(glm::vec2 center, float squareWidth) {
   this->center = center;
   setBox(squareWidth, squareWidth);
}

BoundingBox2D::BoundingBox2D(float left, float right, float top, float bottom) {
   this->left = left;
   this->right = right;
   this->top = top;
   this->bottom = bottom;
   this->center = glm::vec2((right - left) / 2 + left, (top - bottom) / 2 + bottom);
}

bool BoundingBox2D::isIntersecting(BoundingBox2D other) {
   return this->left < other.right && this->right > other.left &&
      this->top > other.bottom && this->bottom < other.top;
}

void BoundingBox2D::moveBoxTo(glm::vec2 newCenter) {
   center = newCenter;
   setBox(right - left, top - bottom);
}

void BoundingBox2D::moveBoxVertical(float distance) {
   center.y += distance;
   top += distance;
   bottom += distance;
}

void BoundingBox2D::moveBoxHorizontal(float distance) {
   center.x += distance;
   right += distance;
   left += distance;
}

void BoundingBox2D::setBox(float width, float height) {
   top = center.y + height / 2;
   bottom = center.y - height / 2;
   right = center.x + width / 2;
   left = center.x - width / 2;
}

