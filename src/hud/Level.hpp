#ifndef Level_HPP
#define Level_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Level : public Renderable {
   public:
      Level();
      void render();
};

#endif