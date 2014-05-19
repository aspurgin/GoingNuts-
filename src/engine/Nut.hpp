#ifndef __NUT_H_
#define __NUT_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "MovableTypes.hpp"

class Nut: public Movable {
   public:
      Nut();
      Nut(glm::vec3, float, float);
      int getMovableType();
      bool shouldFall();
      void setWillFall();
      void render();
      void setModel();
   private:
      float velocity;
      //Mesh model;
      CellShader cshader;
      glm::vec3 offset;
      bool floatingUp;
      void updateOffset();
};

#endif
