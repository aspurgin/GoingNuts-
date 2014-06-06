#include "DirtBlock.hpp"

DirtBlock::DirtBlock() {};

DirtBlock::DirtBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = DIRTBLOCK;
   this->color = color;
   this->type = DIRT_BLOCK_R;
}

DirtBlock::DirtBlock(glm::vec3 center, float width, float height, int color, ParticleSystem *psystem) {
   this->blockType = DIRTBLOCK;
   setObject(center, width, height);
   this->color = color;
   this->mat = color;
   this->psystem = psystem;
   //this->shaderType = C_SHADE;//PT_SHADE;
   this->colorTexture = Assets::getTexture(Assets::DIRT_COLOR_T);
   this->normalTexture = Assets::getTexture(Assets::DIRT_NORMAL_T);
   this->type = DIRT_BLOCK_R;
   this->typeColor = color;
}

int DirtBlock::getStrength() {
   return 1;
}

float DirtBlock::getMoveSpeedPercentage() {
   return 100;
}

int DirtBlock::getColor() {
   return color;
}
