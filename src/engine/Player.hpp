#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "Drill.hpp"

class Player: public Movable {
   public:
      Player();
      Player(glm::vec3, float, float);
      void drillBlock(Block *);
      int getMovableType();
      bool fall();
      void setWillFall();
      void addToScore(int num);
      int getScore();
   private:
   	  int score = 0;
      float velocity;
      int lives;
      Drill drill;
};

#endif
