#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "Drill.hpp"

class Player: public Movable {
   public:
      Player();
      Player(glm::vec3 center, float width, float height);
      void drillBlock(Block *block);
   private:
      float velocity;
      int lives;
      Drill drill;
};

#endif
