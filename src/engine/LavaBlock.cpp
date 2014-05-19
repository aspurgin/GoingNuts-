#include "LavaBlock.hpp"

LavaBlock::LavaBlock() {};

LavaBlock::LavaBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = LAVABLOCK;
}

LavaBlock::LavaBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem) {
   this->blockType = LAVABLOCK;
   setObject(center, width, height);
   this->mat = 1;  //change to something meaningfull
   this->psystem = psystem;
}

int LavaBlock::getStrength() {
   return 99999999;
}

float LavaBlock::getMoveSpeedPercentage() {
   return 100;
}
