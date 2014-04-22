#ifndef __STONEBLOCK_H__
#define __STONEBLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"

class StoneBlock: public Block {
   public:
      StoneBlock();
      StoneBlock(glm::vec3 center);
      StoneBlock(glm::vec3 center, float width, float height);
      int getStrength();
      float getSlowPercentage();
   private:
      
};

#endif
