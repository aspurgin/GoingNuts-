#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"
#include "BlockTypes.hpp"
#include "MovableTypes.hpp"

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
      double deathCounter;
   protected:
      int blockType;
   private:
      int timesDrilled = 0;
      
};

#endif
