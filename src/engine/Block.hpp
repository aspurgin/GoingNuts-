#ifndef __BLOCK_H__
#define __BLOCK_H__

#include <glm/glm.hpp>
#include "Movable.hpp"

class Block: public Movable {
   public:
      virtual int getStrength() = 0;
      virtual float getSlowPercentage() = 0;
      int getTimesDrilled();
   private:
      int timesDrilled;
};

#endif
