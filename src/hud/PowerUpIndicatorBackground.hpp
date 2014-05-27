#ifndef PowerUpIndicatorBackground_HPP
#define PowerUpIndicatorBackground_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class PowerUpIndicatorBackground : public Renderable {
   public:
      PowerUpIndicatorBackground();
      void render();
};

#endif