#ifndef __NUTGAME_H__
#define __NUTGAME_H__

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#include "../helperFiles/Util.hpp"
#endif


#include "DirtBlock.hpp"
#include "Movable.hpp"
#include "Player.hpp"
#include "Nut.hpp"
#include "StoneBlock.hpp"
#include "SandBlock.hpp"
#include "Block.hpp"
#include "CrystalBlock.hpp"
#include "LavaBlock.hpp"
#include "MovableTypes.hpp"
#include "MovableSuperDrill.hpp"
#include "MovableDynamite.hpp"
#include "HardHat.hpp"
#include "Level.hpp"
#include <stdio.h>
#include <vector>

//#define NUMROWS 17
#define NUMCOLS 7
#define NUM_BLOCKS_VISIBLE_ABOVE_PLAYER 6
#define NUM_TOTAL_BLOCKS_VISIBLE 14

class Level;

class NutGame {
   public:
      ~NutGame();
      NutGame();
      std::vector<std::vector<Movable *>  > gameGrid;
      //Movable *gameGrid[NUMROWS][NUMCOLS];
      void init();
      bool isBlockAtPosition(glm::vec2 pos);
      std::list<Renderable*> getObjectsToDraw();
      std::list<Renderable*> getBlocksToDraw();
      std::list<Renderable*> getPlayerToDraw();
      std::list<Renderable*> getNutsToDraw();
      std::list<Renderable*> getHardHatsToDraw();
      std::list<Renderable*> getSuperDrillsToDraw();
      std::list<Renderable*> getDynamitesToDraw();
      bool isDrillingDown();
      bool isDrillingUp();
      bool isDrillingLeft();
      bool isDrillingRight();
      void handleKeyInput();
      void fallDown(double toAdd);
      void checkGrid(double toAdd);
      int getNutsLeft();
      void addToScore(int num);
      int getScore();
      int getDepth();
      bool isGameOver();
      bool isGameWon();
      bool drillDownPressed;
      bool drillLeftPressed;
      bool drillUpPressed;
      bool drillRightPressed;
      bool releasedSinceDownPress;
      bool releasedSinceLeftPress;
      bool releasedSinceUpPress;
      bool releasedSinceRightPress;
      bool left;
      bool right;
      bool up;
      bool down;
      bool throwDynamitePressed;
      bool releasedSinceThrowDynamitePressed;
      Player getPlayer();
      Player player;
      //Added these to have a single particle system in the game instead of per block
      ParticleSystem psystem;
      void updatePSystem(double dt);
      void explodeDynamiteAt(int row, int col);
      void addToNutsLeft();
      void setNumRows(int rows);
      void loadNextLevel();
      bool isWon;
      bool useArrowKeys;
   private:
      std::list<Renderable*> getCertainObjectsToDraw(int type);
      void setFallingMovables(int row, int col);
      void addToGroup(Block* thisBlock, Block* otherBlock);
      void connectBlocks();
      void maybeAddToGroupLeft(int row, int col);
      void maybeAddToGroupRight(int row, int col);
      void maybeAddToGroupDown(int row, int col);
      void finishSettingFallingMovables();
      void checkGroupForOtherAdds(BlockGroup* group);
      int nutsLeft;
      bool checkingGroupForOtherAdds;
      std::vector<BlockGroup*> mightFallGroupList;
      std::vector<Movable*> mightFallBlockList;
      int NUMROWS;
      std::vector<Level> levels;
};

#endif
