#ifndef __NORMALDRILL_H_
#define __NORMALDRILL_H_

#include "Drill.hpp"

class NormalDrill: public Drill {
   public:
      void drillBlock(Block *block, int direction);
   private:
};

#endif
