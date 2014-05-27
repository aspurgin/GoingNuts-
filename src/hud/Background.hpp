#ifndef BACKGROUND_HPP
#define BACKGROUND_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Background : public Renderable {
   public:
      Background();
      void render();
};
#endif