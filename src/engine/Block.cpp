#include "Block.hpp"

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled--;
}

int Block::getBlockType() {
   return blockType;
}
