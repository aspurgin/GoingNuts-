#ifndef __MOVABLE_H__
#define __MOVABLE_H__

#include "Collidable.hpp"
#include "BoundingBox2D.hpp"

class Movable: public Collidable {
   public:
      bool isIntersecting(Collidable &other);
      glm::vec3 center;
   protected:
      void setObject(glm::vec3 center, float width, float height);
   private:
      float width;
      float height;
};

#endif
