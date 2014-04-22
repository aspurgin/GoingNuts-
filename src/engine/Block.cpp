#include "Block.hpp"

moveableType = BLOCK;

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

bool Block::shouldDestroy(int currentTime) {
   if (isDead()) {
      return  >= 1.5;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
}

int Movable::getMovableType() {
   return BLOCK;
}
