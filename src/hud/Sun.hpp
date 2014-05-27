#ifndef SUN_HPP
#define SUN_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Sun : public Renderable {
   public:
      Sun();
      void render();
};

#endif