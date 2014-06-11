#ifndef __SUPERDRILL_H_
#define __SUPERDRILL_H_

#include "Drill.hpp"

class SuperDrill: public Drill {
   public:
      void drillBlock(Block *block, int direction);
   private:
};

#endif
