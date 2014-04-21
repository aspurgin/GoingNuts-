#ifndef __NUTGAME_H__
#define __NUTGAME_H__

#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

class NutGame {
   public:
      void init();
   private:
      Movable gameGrid[7][100];
};

#endif
