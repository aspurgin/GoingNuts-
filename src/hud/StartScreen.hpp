#ifndef STARTSCREEN_HPP
#define STARTSCREEN_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class StartScreen : public Renderable {
   public:
      StartScreen();
      void render();
};

#endif