#include "SandBlock.hpp"

SandBlock::SandBlock() {};

SandBlock::SandBlock(glm::vec3 center, int color) {
   this->center = center;    
   this->blockType = SANDBLOCK;
}

SandBlock::SandBlock(glm::vec3 center, float width, float height, ParticleSystem* psystem) {
   this->blockType = SANDBLOCK;
   setObject(center, width, height);
   this->mat = 0;  //change to something meaningfull
   this->psystem = psystem;
   this->shaderType = C_SHADE;
   this->colorTexture = Assets::getTexture(Assets::DIRT_COLOR_T);
   this->normalTexture = Assets::getTexture(Assets::DIRT_NORMAL_T);
}

int SandBlock::getStrength() {
   return 1;
}

float SandBlock::getMoveSpeedPercentage() {
   return 20;
}
