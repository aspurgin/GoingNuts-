#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "NormalDrill.hpp"
#include "HardHat.hpp"

#define HOR_MOVE_RATE 3

enum Direction {LEFT, RIGHT, STOPPED};

class Player: public Movable {
   public:
      Player();
      Player(glm::vec3, float, float);
      void drillBlock(Block *);
      int getMovableType();
      bool shouldFall();
      void setWillFall();
      int getDepth();
      float getEnergy();
      void died();
      bool getIsDead();
      void render();
      void setShouldJump();
      void setShouldNotJump();
      bool getShouldJump();
      void setIsJumping();
      void setIsNotJumping();
      bool getIsJumping();
      Direction movingHorizontal();
      void setMoveHorizontal(Direction dir);
      void setMovingToColumn(int column);
      int getMovingToColumn();
      bool getHasHardHat();
      void giveHardHat();
      void takeAwayHardHat();
   private:
      Texture texture;
      float velocity;
      int lives;
      bool isDead;
      Drill* drill;
      bool shouldJump;
      bool isJumping;
      Direction horDirection;
      int movingToColumn;
      bool hasHardHat;
      void checkMoveState();
};

#endif
