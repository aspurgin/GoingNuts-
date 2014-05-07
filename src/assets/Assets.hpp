#ifndef _ASSETS
#define _ASSETS
#include <fmod.hpp>
#include <fmod_errors.h>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <map>
#include "../engine/Settings.hpp"

namespace Assets {
   enum Music { GAME_M, TITLE_M };
   enum Sound { ITEM_S, NUT_S, BLOCK_FALL_S };
   enum Meshes { SQUIRREL_S, BLOCK_S };

   void loadAssets();
   void playSound(int);
   void playMusic(int);
   void getMesh(int);
   void releaseAll();
   void update();
};
#endif
