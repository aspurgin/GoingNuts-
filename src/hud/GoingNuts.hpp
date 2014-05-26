#ifndef GOING_NUTS_HPP
#define GOING_NUTS_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class GoingNuts : public Renderable {
   public:
      GoingNuts();
      void render();
};

#endif