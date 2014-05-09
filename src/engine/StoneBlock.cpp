#include "StoneBlock.hpp"

StoneBlock::StoneBlock() {};

StoneBlock::StoneBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = STONEBLOCK;
   this->mat = 4;
}

StoneBlock::StoneBlock(glm::vec3 center, float width, float height) {
   this->blockType = STONEBLOCK;
   this->mat = 4;
   setObject(center, width, height);
}

int StoneBlock::getStrength() {
   return 99999999;
}

float StoneBlock::getSlowPercentage() {
   return 0;
}
