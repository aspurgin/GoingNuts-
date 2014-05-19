#ifndef __SANDBLOCK_H__
#define __SANDBLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"
#include "../shaders/CellShader.hpp"

class SandBlock: public Block {
   public:
      SandBlock();
      SandBlock(glm::vec3 center, int color);
      SandBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem);
      int getStrength();
      float getMoveSpeedPercentage();
   private:
};

#endif
