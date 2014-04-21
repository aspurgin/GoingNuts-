#ifndef __DRILL_H_
#define __DRILL_H_

class Drill {
   public:
      Drill();
      Drill(int strength);
      Drill(int strength, int durability);
      void drillBlock(Block *block);
   private:
      int strength;
      int durability;
      
};

#endif
