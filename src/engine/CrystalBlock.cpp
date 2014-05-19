#include "CrystalBlock.hpp"

CrystalBlock::CrystalBlock() {};

CrystalBlock::CrystalBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = CRYSTALBLOCK;
}

CrystalBlock::CrystalBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem) {
   this->blockType = CRYSTALBLOCK;
   setObject(center, width, height);
   this->mat = 1;  //change to something meaningfull
   this->psystem = psystem;
}

int CrystalBlock::getStrength() {
   return 3;
}

float CrystalBlock::getMoveSpeedPercentage() {
   return 100;
}
