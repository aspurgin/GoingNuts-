#ifndef __MOVABLE_H__
#define __MOVABLE_H__

#include "Collidable.hpp"
#include "BoundingBox2D.hpp"

class Movable: public Collidable {
   public:
      virtual ~Movable() = 0;
      void moveTo(glm::vec2 newCenter);
      void moveHorizontal(float distance);
      void moveVertical(float distance);
      glm::vec3 getCenter();
      virtual int getMovableType() = 0;
   protected:
      void setObject(glm::vec3 center, float width, float height);
      glm::vec3 center;
   private:
      float width;
      float height;
};

#endif
