#ifndef LevelMap_HPP
#define LevelMap_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"
#include "LevelMapTexture.hpp"

class LevelMap : public Renderable {
   public:
   	  LevelMapTexture* levelMapTexture;
      LevelMap();
      void render();
};

#endif