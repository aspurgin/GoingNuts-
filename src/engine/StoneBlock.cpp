#include "StoneBlock.hpp"

StoneBlock::StoneBlock() {};

StoneBlock::StoneBlock(glm::vec3 center) {
   this->center = center;    
   this->blockType = STONEBLOCK;
   this->mat = 4;
   this->type = STONE_BLOCK_R;
}

StoneBlock::StoneBlock(glm::vec3 center, float width, float height, ParticleSystem *psystem) {
   this->blockType = STONEBLOCK;
   this->mat = 4;
   setObject(center, width, height);
   this->psystem = psystem;
   this->shaderType = C_SHADE;
   this->colorTexture = Assets::getTexture(Assets::ROCK_COLOR_T);
   this->normalTexture = Assets::getTexture(Assets::ROCK_NORMAL_T);
   this->type = STONE_BLOCK_R;
}

int StoneBlock::getStrength() {
   return 99999999;
}

float StoneBlock::getMoveSpeedPercentage() {
   return 100;
}

void StoneBlock::makeDead() {
   timesDrilled = getStrength();
   state = DEAD;
   deathCounter = 0;
   this->model = Assets::getMesh(Assets::EXPLODE_BLOCK_M);
   isFractured = true;
   //genParticles();
}