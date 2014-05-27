#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "NormalDrill.hpp"
#include "SuperDrill.hpp"

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
      float getEnergyLeft();
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
      void collectHardHat();
      void takeAwayHardHat();
      void collectSuperDrill();
      void collectDynamite();
      void throwDynamite();
      int getNumDynamites();
      void takeAwayEnergy(float toSub);
      void addEnergy(float toAdd);
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
      int numDynamites;
      void checkMoveState();
      float foodPercent;
};

#endif
