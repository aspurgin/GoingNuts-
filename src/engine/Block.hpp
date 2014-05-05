#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "BlockTypes.hpp"
#include "MovableTypes.hpp"
#include <vector>

class Block: public Movable {
   public:
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
   protected:
      int blockType;
      std::vector<Block*> attatchedTo;
   private:
      int timesDrilled = 0;
      
};

#endif
