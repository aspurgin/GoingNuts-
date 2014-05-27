#ifndef ScoreMask_HPP
#define ScoreMask_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class ScoreMask : public Renderable {
   public:
      ScoreMask();
      void render();
};

#endif