#include "NormalDrill.hpp"

void NormalDrill::drillBlock(Block *block) {
   if (!block->isDead()) {
      block->addToTimesDrilled();
   }
}
