#include "StoneBlock.hpp"

StoneBlock::StoneBlock() {};

StoneBlock::StoneBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = STONEBLOCK;
   this->mat = 4;
   this->psystem = ParticleSystem(this->center, mat);
}

StoneBlock::StoneBlock(glm::vec3 center, float width, float height) {
   this->blockType = STONEBLOCK;
   this->mat = 4;
   setObject(center, width, height);
   this->psystem = ParticleSystem(center, mat);
}

int StoneBlock::getStrength() {
   return 99999999;
}

float StoneBlock::getMoveSpeedPercentage() {
   return 100;
}
