#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"

class Player: public Movable {
   public:
      Player();
      Player(glm::vec3 center, float width, float height);
   private:
      float velocity = 1.f;
      int lives = 3;
};

#endif
