#ifndef YOU_LOST_HPP
#define YOU_LOST_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class YouLost : public Renderable {
   public:
      YouLost();
      void render();
};

#endif