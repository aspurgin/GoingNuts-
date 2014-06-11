#include "NormalDrill.hpp"

void NormalDrill::drillBlock(Block *block, int direction) {
   if (!block->isDead()) {
      block->addToTimesDrilled(direction);
   }
}
