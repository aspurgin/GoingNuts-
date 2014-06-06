#include "BlockGroup.hpp"

BlockGroup::BlockGroup() {
   topRight = 0;
}

BlockGroup::~BlockGroup() {
   blocks.clear();
}

void BlockGroup::addBlock(Block *block) {   
   std::list<Block*>::iterator it;
   
   for (it = blocks.begin(); it != blocks.end(); ++it) {
      if ((int)((*it)->getCenter().y - .5) > (int)(block->getCenter().y - .5)) {
         blocks.insert(it, block);
         break;
      }
      else if ((int)((*it)->getCenter().y - .5) == (int)(block->getCenter().y - .5)) {
         if ((*it)->getCenter().x > block->getCenter().x) {
            blocks.insert(it, block);
            break;
         }
      }
   }
   if (it == blocks.end()) {
      blocks.push_back(block);
      topRight = block;
   }
   block->putInGroup(this);
}

void BlockGroup::destroy() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->makeDead();
   }
}

void BlockGroup::moveGroupTo(BlockGroup* group) {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      group->addBlock(*it);
   }
}

Block* BlockGroup::getTopRight() {
   return topRight;
}

bool BlockGroup::entireGroupCanFall() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      if (!(*it)->getCanFall()) {
         return false;
      }
   }
   return true;
}

void BlockGroup::setGroupCanNotFall() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->setCanNotFall();
   }
}

void BlockGroup::setGroupWillFall() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->setWillFall();
   }
}

void BlockGroup::stopGroupFalling() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->stopFalling();
   }
}

void BlockGroup::adjustGroupPosition() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->moveTo(glm::vec2((*it)->getCenter().x, (int)((*it)->getCenter().y - .5)));
   }
}

std::list<Block*>::iterator BlockGroup::getListBeginIt() {
   return blocks.begin();
}

std::list<Block*>::iterator BlockGroup::getListEndIt() {
   return blocks.end();
}

bool BlockGroup::shouldGroupStopFalling() {
   for (std::list<Block*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      
   }
   return false;
}
