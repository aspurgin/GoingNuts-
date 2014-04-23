#include "Block.hpp"

int moveableType = BLOCK;


int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled++;
}

int Block::getBlockType() {
   return blockType;
}

bool Block::isDead() {
   return timesDrilled >= getStrength();
}

bool Block::shouldDestroy() {
   DEBUG("" << deathCounter);
   if (isDead()) {
      return deathCounter >= .5;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
}

// bool Block::willFall() {
//    return fallCounter != -1;
// }

int Block::getMovableType() {
   return BLOCK;
}
