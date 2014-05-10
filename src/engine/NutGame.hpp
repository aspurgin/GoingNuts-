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
#define NUM_BLOCKS_VISIBLE_ABOVE_PLAYER 6
#define NUM_TOTAL_BLOCKS_VISIBLE 17

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
      std::vector<Movable*> getObjectsToDraw();
      bool isDrillingDown();
      bool isDrillingUp();
      bool isDrillingLeft();
      bool isDrillingRight();
      void handleKeyInput();
      void fallDown(double toAdd);
      void checkGrid(double toAdd);
      bool drillPressed;
      bool left;
      bool right;
      bool up;
      bool down;
      Player player;
   private:
      void setFallingMovables(int row, int col);
      void addToGroup(Block* thisBlock, Block* otherBlock);
      void connectBlocks();
      void maybeAddToGroupLeft(int row, int col);
      void maybeAddToGroupRight(int row, int col);
      void maybeAddToGroupDown(int row, int col);
      void finishSettingFallingMovables();
      void checkGroupForOtherAdds(BlockGroup* group);
      bool checkingGroupForOtherAdds;
      glm::vec2 playerPosition;
      std::vector<BlockGroup*> mightFallGroupList;
      std::vector<Movable*> mightFallBlockList;
};

#endif
