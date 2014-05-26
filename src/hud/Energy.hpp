#ifndef Energy_HPP
#define Energy_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Energy : public Renderable {
   public:
      Energy();
      void render();
};

#endif