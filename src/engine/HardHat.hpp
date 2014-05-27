#ifndef __HARDHAT_H_
#define __HARDHAT_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "MovableTypes.hpp"

class HardHat: public Movable {
   public:
      HardHat();
      HardHat(glm::vec3, float, float);
      int getMovableType();
      bool shouldFall();
      void setWillFall();
      void render();
      void setModel();
      void setPosition(glm::vec3);
   private:
      float velocity;
      //Mesh model;
      CellShader cshader;
      glm::vec3 offset;
      bool floatingUp;
      void updateOffset();
};

#endif
