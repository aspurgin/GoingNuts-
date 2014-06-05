#ifndef Number0_HPP
#define Number0_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number0 : public Number {
   public:
      Number0();
      void render();
};

#endif