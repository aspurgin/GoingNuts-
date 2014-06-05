#ifndef Number3_HPP
#define Number3_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number3 : public Number {
   public:
      Number3();
      void render();
};

#endif