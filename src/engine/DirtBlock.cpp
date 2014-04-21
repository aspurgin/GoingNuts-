#include "DirtBlock.hpp"

DirtBlock::DirtBlock() {};

DirtBlock::DirtBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = BlockType::DIRTBLOCK;
}

DirtBlock::DirtBlock(glm::vec3 center, float width, float height) {
   this->blockType = BlockType::DIRTBLOCK;
   setObject(center, width, height);
}

int DirtBlock::getStrength() {
   return 1;
}

float DirtBlock::getSlowPercentage() {
   return 0;
}
