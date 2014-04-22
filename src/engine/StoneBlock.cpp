#include "StoneBlock.hpp"

StoneBlock::StoneBlock() {};

StoneBlock::StoneBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = DIRTBLOCK;
}

StoneBlock::StoneBlock(glm::vec3 center, float width, float height) {
   this->blockType = DIRTBLOCK;
   setObject(center, width, height);
}

int StoneBlock::getStrength() {
   return 99999999;
}

float StoneBlock::getSlowPercentage() {
   return 0;
}
