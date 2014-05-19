#ifndef __DIRTBLOCK_H__
#define __DIRTBLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"
#include "../shaders/CellShader.hpp"

class DirtBlock: public Block {
   public:
      DirtBlock();
      DirtBlock(glm::vec3 center, int color);
      DirtBlock(glm::vec3 center, float width, float height, int color);
      int getStrength();
      float getMoveSpeedPercentage();
      int getColor();
   private:
      int color; //red 1 blue 2 green 3
};

#endif
