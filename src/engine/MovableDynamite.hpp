#ifndef __MOVABLE_DYNAMITE_H_
#define __MOVABLE_DYNAMITE_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "MovableTypes.hpp"

class MovableDynamite: public Movable {
   public:
      MovableDynamite();
      MovableDynamite(glm::vec3, float, float);
      int getMovableType();
      bool shouldFall();
      void setWillFall();
      void render();
      void setModel();
      void playHitGroundSound();
   private:
      float velocity;
      //Mesh model;
      CellShader cshader;
      glm::vec3 offset;
      bool floatingUp;
      void updateOffset();
};

#endif
