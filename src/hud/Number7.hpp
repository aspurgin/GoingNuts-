#ifndef Number7_HPP
#define Number7_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number7 : public Number {
   public:
      Number7();
      void render();
};

#endif