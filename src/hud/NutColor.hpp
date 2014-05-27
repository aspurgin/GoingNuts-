#ifndef NUT_COLOR_HPP
#define NUT_COLOR_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class NutColor : public Renderable {
   public:
      NutColor();
      void render();
};

#endif