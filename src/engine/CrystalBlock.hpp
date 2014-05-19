#ifndef __CRYSTALBLOCK_H__
#define __CRYSTALBLOCK_H__

#include "Block.hpp"
#include "BlockTypes.hpp"
#include "../shaders/CellShader.hpp"

class CrystalBlock: public Block {
   public:
      CrystalBlock();
      CrystalBlock(glm::vec3 center, int color);
      CrystalBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem);
      int getStrength();
      float getMoveSpeedPercentage();
   private:
};

#endif
