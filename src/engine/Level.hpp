#ifndef __LEVEL_H__
#define __LEVEL_H__

#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include "Nut.hpp"
#include "StoneBlock.hpp"
#include "SandBlock.hpp"
#include "Block.hpp"
#include "CrystalBlock.hpp"
#include "LavaBlock.hpp"
#include "MovableSuperDrill.hpp"
#include "MovableDynamite.hpp"
#include "HardHat.hpp"
#include "NutGame.hpp"
#include <vector>

class NutGame;

class Level {
   public:
      Level(char* levelName);
      void loadLevel(NutGame* game);
   private:
      char* levelName;
      
};

#endif
