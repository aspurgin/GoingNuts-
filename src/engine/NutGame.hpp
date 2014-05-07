#ifndef __NUTGAME_H__
#define __NUTGAME_H__

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#include "../helperFiles/Util.hpp"
#endif


#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include "DirtBlock.hpp"
#include "Nut.hpp"
#include "StoneBlock.hpp"
#include "Block.hpp"
#include "MovableTypes.hpp"
#include <stdio.h>
#include <vector>

#define NUMROWS 17
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
      void fallDown(double toAdd);
      void checkGrid(double toAdd);
      static bool drillPressed;
      static bool left;
      static bool right;
      static bool up;
      static bool down;
      Player player;
   private:
      void setFallingMovables(int row, int col);
      glm::vec2 playerPosition;
      int currentTime;
      int lastTime;
};

#endif
