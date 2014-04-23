#include "StoneBlock.hpp"

StoneBlock::StoneBlock() {};

StoneBlock::StoneBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = STONEBLOCK;
}

StoneBlock::StoneBlock(glm::vec3 center, float width, float height) {
   this->blockType = STONEBLOCK;
   setObject(center, width, height);
}

int StoneBlock::getStrength() {
   return 99999999;
}

float StoneBlock::getSlowPercentage() {
   return 0;
}
