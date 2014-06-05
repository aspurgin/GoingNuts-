#ifndef Number4_HPP
#define Number4_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number4 : public Number {
   public:
      Number4();
      void render();
};

#endif