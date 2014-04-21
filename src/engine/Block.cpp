#include "Block.hpp"

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled--;
}

BlockType Block::getBlockType() {
   return blockType;
}
