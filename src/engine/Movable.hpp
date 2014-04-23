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
      virtual bool fall() = 0;
      virtual void setWillFall() = 0;
      bool willFall();
      void incrementFallCounter(double toAdd);
   protected:
      void setObject(glm::vec3 center, float width, float height);
      glm::vec3 center;
      double fallCounter = -1;
   private:
      float width;
      float height;
};

#endif
