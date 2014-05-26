#ifndef Depth_HPP
#define Depth_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Depth : public Renderable {
   public:
      Depth();
      void render();
};

#endif