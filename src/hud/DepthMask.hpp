#ifndef DepthMask_HPP
#define DepthMask_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class DepthMask : public Renderable {
   public:
      DepthMask();
      void render();
};

#endif