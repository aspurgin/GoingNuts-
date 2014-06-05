#ifndef SUPER_DRILL_IMAGE_HPP
#define SUPER_DRILL_IMAGE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class SuperDrillImage : public Renderable {
   public:
      SuperDrillImage();
      SuperDrillImage(glm::vec3 position, glm::vec3 scale);
      void render();
};

#endif