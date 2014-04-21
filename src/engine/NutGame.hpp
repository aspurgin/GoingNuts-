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
#include "DirtBlock.hpp"

class NutGame {
   public:
      NutGame();
      Movable *gameGrid[7][100];
      void init();
      glm::vec2 positionLeftOfPlayer();
      glm::vec2 positionRightOfPlayer();
      glm::vec2 positionBellowPlayer();
      glm::vec2 positionAbovePlayer();
      bool isBlockAtPosition(glm::vec2 pos);
      static void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods);
      void handleKeyInput();
      Renderer renderer;
   private:
      glm::vec2 playerPosition;
      Player player;
      static bool drillPressed;
      static bool left;
      static bool right;
      static bool up;
      static bool down;
};

#endif
