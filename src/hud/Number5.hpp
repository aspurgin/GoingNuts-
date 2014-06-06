#ifndef Number5_HPP
#define Number5_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number5 : public Number {
   public:
      Number5();
      void render();
};

#endif