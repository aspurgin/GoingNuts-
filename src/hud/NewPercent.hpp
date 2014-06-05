#ifndef NewPercent_HPP
#define NewPercent_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class NewPercent : public Renderable {
   public:
      NewPercent();
      void render();
};

#endif