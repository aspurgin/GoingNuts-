#include "Block.hpp"

int moveableType = BLOCK;

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled--;
}

int Block::getBlockType() {
   return blockType;
}

bool Block::isDead() {
   return timesDrilled >= getStrength();
}

bool Block::shouldDestroy() {
   if (isDead()) {
      return deathCounter >= .5;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
}

int Block::getMovableType() {
   return BLOCK;
}
