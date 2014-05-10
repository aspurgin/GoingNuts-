#ifndef __BLOCKGROUP_H__
#define __BLOCKGROUP_H__

#include "Block.hpp"
#include <list>

class Block;
class BlockGroup {
   public:
      BlockGroup();
      ~BlockGroup();
      void addBlock(Block *block);
      void destroy();
      void moveGroupTo(BlockGroup* group);
      Block* getTopRight();
      void setGroupCanNotFall();
      bool entireGroupCanFall();
      void setGroupWillFall();
      void stopGroupFalling();
      void adjustGroupPosition();
      std::list<Block*>::iterator getListBeginIt();
      std::list<Block*>::iterator getListEndIt();
   private:
      std::list<Block*> blocks;
      Block* topRight;
};

#endif
