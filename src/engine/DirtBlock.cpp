#include "DirtBlock.hpp"

DirtBlock::DirtBlock() {};

DirtBlock::DirtBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = DIRTBLOCK;
   this->color = color;
   this->psystem = ParticleSystem(this->center, mat);

}

DirtBlock::DirtBlock(glm::vec3 center, float width, float height, int color) {
   this->blockType = DIRTBLOCK;
   setObject(center, width, height);
   this->color = color;
   this->mat = color;
   this->psystem = ParticleSystem(center, this->mat);
}

int DirtBlock::getStrength() {
   return 2;
}

float DirtBlock::getMoveSpeedPercentage() {
   return 100;
}

int DirtBlock::getColor() {
   return color;
}
