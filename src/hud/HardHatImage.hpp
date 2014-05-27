#ifndef HARD_HAT_IMAGE_HPP
#define HARD_HAT_IMAGE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class HardHatImage : public Renderable {
   public:
      HardHatImage();
      void render();
};

#endif