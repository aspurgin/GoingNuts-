#ifndef LevelMapTexture_HPP
#define LevelMapTexture_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class LevelMapTexture : public Renderable {
   public:
      LevelMapTexture();
      void render();
};

#endif