#ifndef Number9_HPP
#define Number9_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../hud/Number.hpp"

class Number9 : public Number {
   public:
      Number9();
      void render();
};

#endif