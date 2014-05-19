#ifndef __LAVABLOCK_H__
#define __LAVABLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"
#include "../shaders/CellShader.hpp"

class LavaBlock: public Block {
   public:
      LavaBlock();
      LavaBlock(glm::vec3 center, int color);
      LavaBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem);
      int getStrength();
      float getMoveSpeedPercentage();
   private:
};

#endif
