#ifndef Number2_HPP
#define Number2_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number2 : public Number {
   public:
      Number2();
      void render();
};

#endif