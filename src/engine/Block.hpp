#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "BlockTypes.hpp"
#include "MovableTypes.hpp"
#include "../shaders/CellShader.hpp"
#include <vector>

class Block: public Movable {
   public:
      Block();
      virtual int getStrength() = 0;
      virtual float getSlowPercentage() = 0;
      int getTimesDrilled();
      bool isDead();
      void addToTimesDrilled();
      int getBlockType();
      bool shouldDestroy();
      void incrementDeathCounter(double toAdd);
      int getMovableType();
      void attatchTo(Block *block);
      bool shouldFall();
      void setWillFall();
      double deathCounter = -1;
      bool shouldScale = false;
      void render();
      void setModel();
      void setScale();
   protected:
      int blockType;
      std::vector<Block*> attatchedTo;
      Mesh model;
      CellShader cshader;
   private:
      int timesDrilled = 0;
      
};

#endif
