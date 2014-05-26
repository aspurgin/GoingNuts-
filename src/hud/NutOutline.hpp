#ifndef NUT_OUTLINE_HPP
#define NUT_OUTLINE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class NutOutline : public Renderable {
   public:
      NutOutline();
      void render();
};

#endif