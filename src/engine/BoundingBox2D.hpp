#ifndef __2DBOUNDING_BOX_H__
#define __2DBOUNDING_BOX_H__

#include "glm/glm.hpp"

class BoundingBox2D {
   public:
      BoundingBox2D();
      BoundingBox2D(glm::vec2 center, float width, float height);
      BoundingBox2D(glm::vec2 center, float squareWidth);
      BoundingBox2D(float left, float right, float top, float bottom);
      bool isIntersecting(BoundingBox2D other);
      void moveBoxTo(glm::vec2 newCenter);
      void moveBoxVertical(float distance);
      void moveBoxHorizontal(float distance);
      glm::vec2 center;
   private:
      void setBox(float width, float height);
      float left;
      float right;
      float top;
      float bottom;
};

#endif
