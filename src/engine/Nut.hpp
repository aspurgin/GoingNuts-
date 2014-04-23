#ifndef __NUT_H_
#define __NUT_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "Drill.hpp"

class Nut: public Movable {
   public:
      Nut();
      Nut(glm::vec3, float, float);
      int getMovableType();
      bool fall();
      void setWillFall();
   private:
      float velocity;
};

#endif