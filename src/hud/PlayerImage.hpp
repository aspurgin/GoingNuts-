#ifndef PLAYER_IMAGE_HPP
#define PLAYER_IMAGE_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class PlayerImage : public Renderable {
   public:
      PlayerImage();
      PlayerImage(glm::vec3 position, glm::vec3 scale);
      void render();
};

#endif