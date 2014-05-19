#ifndef __DRILL_H_
#define __DRILL_H_

#include "Block.hpp"

class Drill {
   public:
      Drill();
      Drill(int strength);
      Drill(int strength, int durability);
      virtual void drillBlock(Block *block) = 0;
   private:
      int strength;
      int durability;
      
};

#endif
