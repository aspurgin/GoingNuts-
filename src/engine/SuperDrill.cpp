#include "SuperDrill.hpp"

void SuperDrill::drillBlock(Block *block, int direction) {
   if (!block->isDead()) {
      block->makeDead();
      if (block->isInAGroup()) {
         block->getGroupIn()->stopGroupFalling();
         block->getGroupIn()->destroy();
         delete block->getGroupIn();
      }
   }
}
