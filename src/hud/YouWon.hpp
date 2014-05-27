#ifndef YOU_WON_HPP
#define YOU_WON_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class YouWon : public Renderable {
   public:
      YouWon();
      void render();
};

#endif