#include "Block.hpp"

int moveableType = BLOCK;

Block::Block() {
   deathCounter = -1;
   shouldScale = false;
   timesDrilled = 0;
   groupIn = 0;
   model = Assets::getMesh(Assets::BLOCK_M);
   this->shaderType = C_SHADE;
   scale = 0.5f;
   scaleX = 0.5f;
   scaleY = 0.5f;
   scaleZ = 0.5f;
   curScale = 0.48f;
   this->modelTrans.useModelViewMatrix();
   //model.debug();
}

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled++;
   genParticles();
   if (timesDrilled >= getStrength()) {
      if (isInAGroup()) {
         groupIn->destroy();
         delete groupIn;
      }
      else {
        //genParticles();
      }
      state = DEAD;
   }
}

int Block::getBlockType() {
   return blockType;
}

bool Block::isDead() {
   return timesDrilled >= getStrength();
}

bool Block::shouldDestroy() {
   if (isDead()) {
      return deathCounter >= .2;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
   scale -= toAdd;
}

int Block::getMovableType() {
   return BLOCK;
}

bool Block::shouldFall() {
	if (fallCounter >= HANG_TIME) {
      return true;
   }
   scale = curScale;
   return false;
}

void Block::setWillFall() {
   if (fallCounter < 0) {
      fallCounter = 0;
   }
}

void Block::makeDead() {
	timesDrilled = getStrength();
   state = DEAD;
   deathCounter = 0;
   genParticles();
}

bool Block::isInAGroup() {
   return groupIn != 0;
}

BlockGroup* Block::getGroupIn() {
   return groupIn;
}

void Block::putInGroup(BlockGroup* group) {
   groupIn = group;
   curScale = 0.5f;
   scale = curScale;
}

void Block::setScale() {
   if (willFall()) {
      if (shouldScale) {
         shouldScale = false;
         scale = 0.45;
      }
      else {
         shouldScale = true;
         scale = curScale;
      }
   }
   else if (isDead()) {
      scale = curScale - deathCounter;
      //printf("My scale!: %f\n", scale);
   }
   scaleX = scale;
   scaleY = scale;
   scaleZ = scale + 1;
}

void Block::render() {
   setScale();
   position = center + glm::vec3(0, 0, -1);
   
   Renderable::render();
}

void Block::genParticles() {
   /*switch (blockType) {
      case CRYSTALBLOCK:
         psystem->setType(CRYSTALBLOCK);
         //psystem->mass = 1;
         break;
      case DIRTBLOCK:
         //psystem->mass = 0.05;
         break;
      case LAVABLOCK:
         //s;
         break;
      case SANDBLOCK:
         //s;
         break;
      case STONEBLOCK:
         //s;
         break;
   }*/
   psystem->setMatID(this->mat);
   psystem->moveTo(center + glm::vec3(0, 0.5, 0));
   psystem->burst(25);
}

