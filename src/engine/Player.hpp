#ifndef __PLAYER_H_
#define __PLAYER_H_

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "Drill.hpp"

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
      void setModel();
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
   private:
      float velocity;
      int lives;
      bool isDead;
      Drill drill;
      Mesh model;
      CellShader cshader;
      bool shouldJump;
      bool isJumping;
      Direction horDirection;
      int movingToColumn;
      void checkMoveState();
};

#endif
