#ifndef DYNAMITE_IMAGE_HPP
#define DYNAMITE_IMAGE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class DynamiteImage : public Renderable {
   public:
      DynamiteImage();
      DynamiteImage(glm::vec3 position, glm::vec3 scale);
      void render();
};

#endif