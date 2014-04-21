#ifndef __COLLIDABLE_H__
#define __COLLIDABLE_H__

#include "BoundingBox2D.hpp"

class Collidable {
   public:
      virtual ~Collidable() {};
      virtual bool isIntersecting(Collidable &other) = 0;
      BoundingBox2D getBoundingBox();
   protected:
      BoundingBox2D box;
};

#endif
