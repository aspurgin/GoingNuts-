#ifndef Number8_HPP
#define Number8_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number8 : public Number {
   public:
      Number8();
      void render();
};

#endif