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
      Movable gameGrid[7][100];
      void init();
      glm::vec2 positionLeftOfPlayer();
      glm::vec2 positionRightOfPlayer();
      glm::vec2 positionBellowPlayer();
      glm::vec2 positionAbovePlayer();
      bool isBlockAtPosition(glm::vec2 pos);
   private:
      Renderer renderer;
      glm::vec2 playerPosition;
      bool drillPressed;
      Player player;
};

#endif
