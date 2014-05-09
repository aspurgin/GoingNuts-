#ifndef __MOVABLE_H__
#define __MOVABLE_H__

#include "Collidable.hpp"
#include "BoundingBox2D.hpp"
#include "../rendering/Renderable.hpp"
#include "../assets/Assets.hpp"

enum M_STATE {ALIVE, DEAD};

class Movable: public Collidable, public Renderable {
   public:
      virtual ~Movable() = 0;
      void moveTo(glm::vec2 newCenter);
      void moveHorizontal(float distance);
      void moveVertical(float distance);
      glm::vec3 getCenter();
      virtual int getMovableType() = 0;
      void fall(double toAdd);
      void maybeStopFalling();
      void stopFalling();
      virtual bool shouldFall() = 0;
      virtual void setWillFall() = 0;
      bool willFall();
      void incrementFallCounter(double toAdd);
      //virtual void render();
      //virtual void setModel();
   protected:
      void setObject(glm::vec3 center, float width, float height);
      glm::vec3 center;
      double fallCounter = -1;
      int mat;
      int state;
   private:
      float width;
      float height;
      
};

#endif
