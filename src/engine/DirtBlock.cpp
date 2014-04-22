#include "DirtBlock.hpp"

DirtBlock::DirtBlock() {};

DirtBlock::DirtBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = DIRTBLOCK;
   this->color = color;
}

DirtBlock::DirtBlock(glm::vec3 center, float width, float height, int color) {
   this->blockType = DIRTBLOCK;
   setObject(center, width, height);
   this->color = color;
}

int DirtBlock::getStrength() {
   return 1;
}

float DirtBlock::getSlowPercentage() {
   return 0;
}

int Block::getColor() {
   return color;
}
