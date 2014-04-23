#ifndef __NUTGAME_H__
#define __NUTGAME_H__




#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include "DirtBlock.hpp"
#include "Block.hpp"
#include "MovableTypes.hpp"
#include <vector>

#define NUMROWS 6
#define NUMCOLS 7

class NutGame {
   public:
      ~NutGame();
      NutGame();
      Movable *gameGrid[NUMROWS][NUMCOLS];
      void init();
      glm::vec2 positionLeftOfPlayer();
      glm::vec2 positionRightOfPlayer();
      glm::vec2 positionBellowPlayer();
      glm::vec2 positionAbovePlayer();
      bool isBlockAtPosition(glm::vec2 pos);
      //static void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods);
      std::vector<Movable*> getObjectsToDraw();
      bool isDrillingDown();
      bool isDrillingUp();
      bool isDrillingLeft();
      bool isDrillingRight();
      void handleKeyInput();
      void fallDown();
      static bool drillPressed;
      static bool left;
      static bool right;
      static bool up;
      static bool down;
   private:
      glm::vec2 playerPosition;
      Player player;
      int currentTime;
      int lastTime;
};

#endif
