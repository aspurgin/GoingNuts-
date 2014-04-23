#include "NutGame.hpp"

bool NutGame::drillPressed = false;
bool NutGame::left = false;
bool NutGame::right = false;
bool NutGame::up = false;
bool NutGame::down = false;

NutGame::~NutGame() {
   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {

            //we should fix this

            //delete gameGrid[row][col];
         }
      }
   }
}

void NutGame::init() {
   this->drillPressed = false;
   //player = Player(glm::vec3(NUMCOLS/2, 0, 0), 1.0f, 1.0f);

   //for (int col = 0; col < NUMCOLS; col++) {
   //   gameGrid[0][col] = 0;
   //}
   //gameGrid[0][NUMCOLS/2] = &player;
   //playerPosition = glm::vec2(0, NUMCOLS/2);

   std::FILE *file = fopen("levels/level25per.txt", "r");
   char c;

   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col< NUMCOLS; col++) {
         //gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f, row%3);
         c = fgetc(file);
         if (c == 'X') {
            gameGrid[row][col] = new StoneBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f);
         }
         else if (c == 'R') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f, 1);
         }
         else if (c == 'G') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f, 3);
         }
         else if (c == 'B') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 1.0f, 1.0f, 2);
         }
         else if (c == 'S') {
            player = Player(glm::vec3(col, -row, 0), 1.0f, 1.0f);
            gameGrid[row][col] = &player;
            playerPosition = glm::vec2(row, col);
         }
         else if (c == '0') {
            gameGrid[row][col] = 0;
         }
         else if (c == 'N') {
            gameGrid[row][col] = new Nut(glm::vec3(col, -row, 0), 1.0f, 1.0f);
         }
         fgetc(file);

         //printf("pos at: x:%d, y:%d\n", col, row);
      }
   }
   fclose(file);
}

glm::vec2 NutGame::positionLeftOfPlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y - 1);
}

glm::vec2 NutGame::positionRightOfPlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y + 1);
}

glm::vec2 NutGame::positionBellowPlayer() {
   return glm::vec2(playerPosition.x + 1, playerPosition.y);
}

glm::vec2 NutGame::positionAbovePlayer() {
   return glm::vec2(playerPosition.x - 1, playerPosition.y);
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

   if (pos.x >= 0 && pos.y >= 0 && pos.y <= NUMCOLS) {
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

void NutGame::fallDown(double toAdd) {
   //DEBUG("row: " << playerPosition.x << ",  col: " << playerPosition.y);
   for (int row = NUMROWS - 1; row >= 0; row--) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            if (gameGrid[row][col]->willFall()) {
               gameGrid[row][col]->incrementFallCounter(toAdd);
            }
            if (gameGrid[row][col]->fall()) {
               gameGrid[row][col]->moveTo(glm::vec2(col, -row - 1));
               if (gameGrid[row][col]->getMovableType() == PLAYER) {
                  playerPosition.x++;
                  if (gameGrid[row + 1][col] != 0 && gameGrid[row + 1][col]->getMovableType() == NUT) {
                     player.addToScore(5);
                  }
               }
               gameGrid[row + 1][col] = gameGrid[row][col];
               gameGrid[row][col] = 0;
            }
         }
      }
   }
}

void NutGame::checkGrid(double toAdd) {
   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         Movable * curObj = gameGrid[row][col];
         if (curObj != 0) {
            setFallingMovables(row, col);
            if (curObj->getMovableType() == BLOCK && ((Block*)curObj)->isDead()) {
               ((Block*)curObj)->incrementDeathCounter(toAdd);
               if (((Block*)curObj)->shouldDestroy()) {
                  //setFallingMovables(row - 1, col);
                  delete gameGrid[row][col];
                  gameGrid[row][col] = 0;
               }
            }
         }
      }
   }

   if (!isBlockAtPosition(positionBellowPlayer())) {
      gameGrid[(int)playerPosition.x][(int)playerPosition.y]->setWillFall();
   }
}

void NutGame::setFallingMovables(int row, int col) {
   if (row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
         gameGrid[row + 1][col]->getMovableType() == PLAYER ||
         gameGrid[row + 1][col]->willFall())) {
      if (gameGrid[row + 1][col] != 0 && gameGrid[row][col]->getMovableType() == NUT && gameGrid[row + 1][col]->willFall()) {

      }
      else {
         gameGrid[row][col]->setWillFall();
      }
   }
}

void NutGame::handleKeyInput() {

   glm::vec2 pos;
   bool blockExists;
   Block* block;

   if (left) {

      pos = positionLeftOfPlayer();
      if (pos.y >= 0) {

         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists && drillPressed == true) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  player.addToScore(1);
                  block->deathCounter = 0;
               }
            }
         }
         else {
            if (!blockExists && drillPressed != true) {
               if (gameGrid[(int)pos.x][(int)pos.y] != 0 && gameGrid[(int)pos.x][(int)pos.y]->getMovableType() == NUT) {
                  player.addToScore(5);
               }
               playerPosition = pos;
               gameGrid[(int)pos.x][(int)pos.y] = gameGrid[(int)pos.x][(int)pos.y + 1];
               gameGrid[(int)pos.x][(int)pos.y + 1] = 0;
               player.moveTo(glm::vec2(pos.y, -pos.x));
            }
            else if (pos.x != 0 && !isBlockAtPosition(glm::vec2(pos.x - 1, pos.y))) {
               if (gameGrid[(int)pos.x - 1][(int)pos.y] != 0 && gameGrid[(int)pos.x - 1][(int)pos.y]->getMovableType() == NUT) {
                  player.addToScore(5);
               }
               playerPosition = glm::vec2(pos.x - 1, pos.y);
               gameGrid[(int)pos.x - 1][(int)pos.y] = gameGrid[(int)pos.x][(int)pos.y + 1];
               gameGrid[(int)pos.x][(int)pos.y + 1] = 0;
               player.moveTo(glm::vec2(pos.y, -pos.x + 1));
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
               player.addToScore(1);
               block->deathCounter = 0;
            }
         }
      }
      else {
         if (!blockExists) {
            if (gameGrid[(int)pos.x][(int)pos.y] != 0 && gameGrid[(int)pos.x][(int)pos.y]->getMovableType() == NUT) {
               player.addToScore(5);
            }
            playerPosition = pos;
            gameGrid[(int)pos.x][(int)pos.y] = gameGrid[(int)pos.x - 1][(int)pos.y];
            gameGrid[(int)pos.x - 1][(int)pos.y] = 0;
            player.moveTo(glm::vec2(pos.y, -pos.x));
         }
      }
   }
   else if (up) {
      pos = positionAbovePlayer();
      if (pos.x != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  player.addToScore(1);
                  block->deathCounter = 0;
               }
            }
         }
      }
   }
   else if (right) {
      pos = positionRightOfPlayer();
      if (pos.y < NUMCOLS) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  player.addToScore(1);
                  block->deathCounter = 0;
               }
            }
         }
         else {
            if (!blockExists) {
               if (gameGrid[(int)pos.x][(int)pos.y] != 0 && gameGrid[(int)pos.x][(int)pos.y]->getMovableType() == NUT) {
                  player.addToScore(5);
               }
               playerPosition = pos;
               gameGrid[(int)pos.x][(int)pos.y] = gameGrid[(int)pos.x][(int)pos.y - 1];
               gameGrid[(int)pos.x][(int)pos.y - 1] = 0;
               player.moveTo(glm::vec2(pos.y, -pos.x));
            }
            else if (pos.x != 0 && !isBlockAtPosition(glm::vec2(pos.x - 1, pos.y))) {
               if (gameGrid[(int)pos.x - 1][(int)pos.y] != 0 && gameGrid[(int)pos.x - 1][(int)pos.y]->getMovableType() == NUT) {
                  player.addToScore(5);
               }
               playerPosition = glm::vec2(pos.x - 1, pos.y);
               gameGrid[(int)pos.x - 1][(int)pos.y] = gameGrid[(int)pos.x][(int)pos.y - 1];
               gameGrid[(int)pos.x][(int)pos.y - 1] = 0;
               player.moveTo(glm::vec2(pos.y, -pos.x + 1));
            }
         }
      }
   }
}

std::vector<Movable*> NutGame::getObjectsToDraw() {
   int count = playerPosition.x - 6;
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

   for (int row = count; row < count + 12 && row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            TRACE("block " << row << ", " << col << ", pointer: " << gameGrid[row][col]);
            objects.push_back(gameGrid[row][col]);
            //DEBUG("row " << row << ", col " << col << ",  " << gameGrid[row][col]);
         }
         else {
            TRACE("i'm out of the game");
         }
      }
   }


   lastTime = currentTime;
   return objects;
}


