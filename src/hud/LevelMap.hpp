#ifndef LevelMap_HPP
#define LevelMap_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"
#include "LevelMapTexture.hpp"
#include "PlayerImage.hpp"
#include "../engine/NutGame.hpp"

class LevelMap : public Renderable {
   public:
   	  LevelMapTexture* levelMapTexture;
   	  NutGame* nutGame;
   	  PlayerImage* playerImage;
   	  int lastLevel;
   	  int count;
   	  glm::vec3 levelPositions[9];
      LevelMap(NutGame* nutGame);
      void render();
};

#endif