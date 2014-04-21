#ifndef __DIRTBLOCK_H__
#define __DIRTBLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"

class DirtBlock: public Block {
   public:
      DirtBlock();
      DirtBlock(glm::vec3 center);
      DirtBlock(glm::vec3 center, float width, float height);
      int getStrength();
      float getSlowPercentage();
   private:
      
};

#endif
