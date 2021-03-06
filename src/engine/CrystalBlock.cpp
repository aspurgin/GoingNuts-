#include "CrystalBlock.hpp"

CrystalBlock::CrystalBlock() {};

CrystalBlock::CrystalBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = CRYSTALBLOCK;
   this->type = CRYSTAL_BLOCK_R;
}

CrystalBlock::CrystalBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem) {
   this->blockType = CRYSTALBLOCK;
   setObject(center, width, height);
   this->mat = 1;  //change to something meaningfull
   this->psystem = psystem;
   this->mat = 7;
   this->colorTexture = Assets::getTexture(Assets::DIRT_COLOR_T);
   this->normalTexture = Assets::getTexture(Assets::CRYSTAL_T);
   //this->shaderType = C_SHADE;//PT_SHADE;
   this->type = CRYSTAL_BLOCK_R;
}

int CrystalBlock::getStrength() {
   return 3;
}

float CrystalBlock::getMoveSpeedPercentage() {
   return 100;
}

void CrystalBlock::makeDead() {
   timesDrilled = getStrength();
   state = DEAD;
   if (deathCounter < 0) {
      deathCounter = 0;
   }
   this->model = Assets::getMesh(Assets::EXPLODE_BLOCK_M);
   isFractured = true;
   genParticles(0);
}
