#ifndef Number1_HPP
#define Number1_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number1 : public Number {
   public:
      Number1();
      void render();
};

#endif