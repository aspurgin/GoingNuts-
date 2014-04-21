#ifndef __NUTGAME_H__
#define __NUTGAME_H__

#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include "../rendering/Renderer.hpp"

class NutGame {
   public:
      NutGame();
      Renderer renderer;
      Movable gameGrid[7][100];
      void init();
   private:

};

#endif
