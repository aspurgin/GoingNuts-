#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "NormalDrill.hpp"
#include "SuperDrill.hpp"
#include "HardHat.hpp"
#include "../assets/Assets.hpp"

#define HOR_MOVE_RATE 5.0

enum Direction {LEFT, RIGHT, STOPPED};
enum State {DRILLING_DOWN, DRILLING_UP, DRILLING_RIGHT, DRILLING_LEFT, RUNNING_LEFT, RUNNING_RIGHT, FALLING, STATIC};

class Player: public Movable {
   public:
      Player();
      Player(glm::vec3, float, float);
      void drillBlock(Block *, int);
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
      bool threwDynamite;
      void addToScore(int num);
      int getScore();
      void playHitGroundSound();
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
      void setAnimation();
      int state;
      float foodPercent;
      HardHat hat;
      int drillCount;
      int score;
};

#endif
