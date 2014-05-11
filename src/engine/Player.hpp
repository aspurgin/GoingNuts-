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
      bool shouldFall();
      void setWillFall();
      void addToScore(int num);
      int getScore();
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
   private:
      int score;
      float velocity;
      int lives;
      bool isDead;
      Drill drill;
      Mesh model;
      CellShader cshader;
      bool shouldJump;
      bool isJumping;
};

#endif
