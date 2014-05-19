#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "BlockTypes.hpp"
#include "MovableTypes.hpp"
#include "BlockGroup.hpp"
#include "../shaders/CellShader.hpp"
#include "../particles/Particles.hpp"
#include <vector>

#define HANG_TIME 2

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
      void makeDead();
      bool isInAGroup();
      BlockGroup* getGroupIn();
      void putInGroup(BlockGroup* group);
      double deathCounter;
      bool shouldScale;
      void render();
      void setModel();
      void setScale();
      //void updatePSystem(double dt);
      void genParticles();
   protected:
      BlockGroup *groupIn;
      int blockType;
      std::vector<Block*> attatchedTo;
      Mesh model;
      CellShader cshader;
      ParticleSystem *psystem;
   private:
      int timesDrilled;
      float curScale;
      
};

#endif
