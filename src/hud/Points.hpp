#ifndef Points_HPP
#define Points_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Points : public Renderable {
   public:
      Points();
      void render();
};

#endif