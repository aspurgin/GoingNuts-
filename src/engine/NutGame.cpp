#include "NutGame.hpp"

bool NutGame::drillPressed = false;
bool NutGame::left = false;
bool NutGame::right = false;
bool NutGame::up = false;
bool NutGame::down = false;

void NutGame::init() {
   this->drillPressed = false;
   player = Player(glm::vec3(NUMCOLS/2 + 0.0f, 0.0f, 0.0f), 1.0f, 1.0f);
   printf("player pos: x: %d, y: %d\n", player.getCenter().x, player.getCenter().y);
   for (int col = 0; col < NUMCOLS; col++) {
      gameGrid[0][col] = 0;
   }
   gameGrid[0][NUMCOLS/2] = &player;
   playerPosition = glm::vec2(NUMCOLS/2, 0);

   for (int row = 1; row < NUMROWS; row++) {
      for (int col = 0; col< NUMCOLS; col++) {
         gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f, row%3);

         //printf("pos at: x:%d, y:%d\n", col, row);
      }
   }
}

glm::vec2 NutGame::positionLeftOfPlayer() {
   return glm::vec2(playerPosition.x - 1, playerPosition.y);
}

glm::vec2 NutGame::positionRightOfPlayer() {
   return glm::vec2(playerPosition.x + 1, playerPosition.y);
}

glm::vec2 NutGame::positionBellowPlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y - 1);
}

glm::vec2 NutGame::positionAbovePlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y + 1);
}

NutGame::NutGame() {
   drillPressed = false;
   left = false;
   right = false;
   up = false;
   down = false;
}

bool NutGame::isBlockAtPosition(glm::vec2 pos) {
   Movable* movable;

   if (pos.x >= 0 && pos.y >= 0) {
      if (gameGrid[(int)(pos.x)][(int)(pos.y)] != 0) {
         movable = gameGrid[(int)(pos.x)][(int)(pos.y)];
      }
      else {
         return false;
      }
      return movable->getMovableType() == BLOCK;
   }
   return false;
}

bool NutGame::isDrillingDown() {
   return down && drillPressed;
}

bool NutGame::isDrillingUp() {
   return up && drillPressed;
}

bool NutGame::isDrillingLeft() {
   return left && drillPressed;
}

bool NutGame::isDrillingRight() {
   return right && drillPressed;
}

void NutGame::handleKeyInput() {
   glm::vec2 pos;
   bool blockExists;
   Block* block;

   if (left) {
      pos = positionLeftOfPlayer();
      if (pos.x != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = 0;
               }
            }
         }
         else {
            if (!blockExists) {
               player.moveTo(pos);
            }
            else if (pos.y != 0 && !isBlockAtPosition(glm::vec2(pos.x, pos.y + 1))) {
               player.moveTo(glm::vec2(pos.x, pos.y + 1));
            }
         }
      }
   }
   else if (down) {
      pos = positionBellowPlayer();
      blockExists = isBlockAtPosition(pos);
      if (drillPressed == true) {
         if (blockExists) {
            block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
            player.drillBlock(block);
            if (block->isDead() && block->deathCounter == -1) {
               block->deathCounter = 0;
            }
         }
      }
      else {
         if (!blockExists) {
            player.moveTo(pos);
         }
      }
   }
   else if (up) {
      pos = positionAbovePlayer();
      if (pos.y != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = 0;
               }
            }
         }
      }
   }
   else if (right) {
      pos = positionRightOfPlayer();
      if (pos.x < 6) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = 0;
               }
            }
         }
         else {
            if (!blockExists) {
               player.moveTo(pos);
            }
            else if (pos.y != 0 && !isBlockAtPosition(glm::vec2(pos.x, pos.y + 1))) {
               player.moveTo(glm::vec2(pos.x, pos.y + 1));
            }
         }
      }
   }
}

std::vector<Movable*> NutGame::getObjectsToDraw() {
   int count = playerPosition.y - 5;
   std::vector<Movable*> objects;
   
   if (count < 0) {
      count = 0;
   }
   
   
   /*for (int count2 = 0; count2 < 10; count2++) {
      for (int count3 = 0; count3 < 7; count3++) {
         if (gameGrid[count3][count2] != 0) {
            objects.push_back(gameGrid[count3][count2++]);
            printf("position: %d, %d\n", count3, count2);
         }
      }
   }*/

   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            objects.push_back(gameGrid[row][col]);
         }
      }
   }

   lastTime = currentTime;
   return objects;
}


