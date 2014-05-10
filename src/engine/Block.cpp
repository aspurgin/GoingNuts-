#include "Block.hpp"

Block::Block() {
   deathCounter = -1;
   shouldScale = false;
   timesDrilled = 0;
   groupIn = 0;
}

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled++;
   if (timesDrilled >= getStrength()) {
      if (isInAGroup()) {
         groupIn->destroy();
         delete groupIn;
      }
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
}

int Block::getMovableType() {
   return BLOCK;
}

bool Block::shouldFall() {
	if (fallCounter >= HANG_TIME) {
      return true;
   }
   return false;
}

void Block::setWillFall() {
   if (fallCounter < 0) {
      fallCounter = 0;
   }
}

void Block::makeDead() {
	timesDrilled = getStrength();
}

bool Block::isInAGroup() {
   return groupIn != 0;
}

BlockGroup* Block::getGroupIn() {
   return groupIn;
}

void Block::putInGroup(BlockGroup* group) {
   groupIn = group;
}

