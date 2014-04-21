#ifndef __COLLIDABLE_H__
#define __COLLIDABLE_H__

#include "BoundingBox2D.hpp"

class Collidable {
   public:
      virtual ~Collidable() = 0;
      bool isIntersecting(Collidable &other);
      BoundingBox2D getBoundingBox();
      void moveBoundingBoxTo(glm::vec2 newCenter);
      void moveBoundingBoxVertical(float distance);
      void moveBoundingBoxHorizontal(float distance);
   protected:
      BoundingBox2D box;
};

#endif
