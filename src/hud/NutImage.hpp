#ifndef NUT_IMAGE_HPP
#define NUT_IMAGE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class NutImage : public Renderable {
   public:
      NutImage();
      NutImage(glm::vec3 position, glm::vec3 scale);
      void render();
};

#endif