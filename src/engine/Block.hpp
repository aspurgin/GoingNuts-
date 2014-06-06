#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "BlockTypes.hpp"
#include "MovableTypes.hpp"
#include "BlockGroup.hpp"
#include "../shaders/CellShader.hpp"
#include "../particles/Particles.hpp"
#include "../assets/Assets.hpp"
#include <vector>

#define HANG_TIME 1

class BlockGroup;

class Block: public Movable {
   public:
      Block();
      virtual int getStrength() = 0;
      virtual float getMoveSpeedPercentage() = 0;
      int getTimesDrilled();
      bool isDead();
      void addToTimesDrilled();
      int getBlockType();
      bool shouldDestroy();
      void incrementDeathCounter(double toAdd);
      int getMovableType();
      bool shouldFall();
      void setWillFall();
      virtual void makeDead();
      bool isInAGroup();
      BlockGroup* getGroupIn();
      void putInGroup(BlockGroup* group);
      double deathCounter;
      bool shouldScale;
      void render();
      void setScale();
      void updatePSystem(double dt);
      void genParticles();
      void playHitGroundSound();
   protected:
      bool isFractured;
      BlockGroup *groupIn;
      int blockType;
      std::vector<Block*> attatchedTo;
      ParticleSystem *psystem;
      int timesDrilled;
   private:   
      float curScale;
      
};

#endif
