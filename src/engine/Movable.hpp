#ifndef __MOVABLE_H__
#define __MOVABLE_H__

#include "Collidable.hpp"
#include "BoundingBox2D.hpp"

class Movable: public Collidable {
   public:
      virtual ~Movable() = 0;
      glm::vec3 center;
      void moveTo(glm::vec2 newCenter);
      void moveHorizontal(float distance);
      void moveVertical(float distance);
   protected:
      void setObject(glm::vec3 center, float width, float height);
   private:
      float width;
      float height;
};

#endif
