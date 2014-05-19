#include "SandBlock.hpp"

SandBlock::SandBlock() {};

SandBlock::SandBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = SANDBLOCK;
}

SandBlock::SandBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem) {
   this->blockType = SANDBLOCK;
   setObject(center, width, height);
   this->mat = 1;  //change to something meaningfull
   this->psystem = psystem;
}

int SandBlock::getStrength() {
   return 1;
}

float SandBlock::getMoveSpeedPercentage() {
   return 50;
}
