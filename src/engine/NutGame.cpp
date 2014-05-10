#include "NutGame.hpp"

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#endif

NutGame::NutGame() {
   this->drillPressed = false;
   this->left = false;
   this->right = false;
   this->up = false;
   this->down = false;
   this->checkingGroupForOtherAdds = false;
}

NutGame::~NutGame() {
   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0 && gameGrid[row][col]->getMovableType() != PLAYER) {
            delete gameGrid[row][col];
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
   //std::FILE *file = fopen("levels/test.txt", "r");
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
      }
   }
   fclose(file);
   
   connectBlocks();
}

void NutGame::connectBlocks() {
   for (int row = NUMROWS - 1; row >= 0; row--) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            maybeAddToGroupDown(row, col);
            maybeAddToGroupLeft(row, col);
            maybeAddToGroupRight(row, col);
         }
      }
   }
}

void NutGame::maybeAddToGroupLeft(int row, int col) {
   Block* thisBlock;
   Block* left;

   if (col > 0 && gameGrid[row][col - 1] != 0 &&
       gameGrid[row][col]->getMovableType() == BLOCK &&
       gameGrid[row][col - 1]->getMovableType() == BLOCK) {
      thisBlock = (Block*)gameGrid[row][col];
      left = (Block*)gameGrid[row][col - 1];
      if (thisBlock->getBlockType() == left->getBlockType()) {
         if (thisBlock->getBlockType() == DIRTBLOCK) {
            if (((DirtBlock*)thisBlock)->getColor() == ((DirtBlock*)left)->getColor()) {
               addToGroup(thisBlock, left);
               gameGrid[row][col]->moveTo(glm::vec2(col, -row));
            }
         }
         else {
            addToGroup(thisBlock, left);
            gameGrid[row][col]->moveTo(glm::vec2(col, -row));
         }
      }
   }
}

void NutGame::maybeAddToGroupRight(int row, int col) {
   Block* thisBlock;
   Block* right;
   
   if (col < NUMCOLS - 1 && gameGrid[row][col + 1] != 0 &&
       gameGrid[row][col]->getMovableType() == BLOCK &&
       gameGrid[row][col + 1]->getMovableType() == BLOCK) {
         
      thisBlock = (Block*)gameGrid[row][col];
      right = (Block*)gameGrid[row][col + 1];
      if (thisBlock->getBlockType() == right->getBlockType()) {
         if (thisBlock->getBlockType() == DIRTBLOCK) {
            if (((DirtBlock*)thisBlock)->getColor() == ((DirtBlock*)right)->getColor()) {
               addToGroup(thisBlock, right);
               gameGrid[row][col]->moveTo(glm::vec2(col, -row));
            }
         }
         else {
            addToGroup(thisBlock, right);
            gameGrid[row][col]->moveTo(glm::vec2(col, -row));
         }
      }
   }
}

void NutGame::maybeAddToGroupDown(int row, int col) {
   Block* thisBlock;
   Block* down;
   
   if (row < NUMROWS - 1 && gameGrid[row + 1][col] != 0 && 
       gameGrid[row + 1][col]->getMovableType() == BLOCK &&
       gameGrid[row][col]->getMovableType() == BLOCK) {
      thisBlock = (Block*)gameGrid[row][col];
      down = (Block*)gameGrid[row + 1][col];
      if (thisBlock->getBlockType() == down->getBlockType()) {
         if (thisBlock->getBlockType() == DIRTBLOCK) {
            if (((DirtBlock*)thisBlock)->getColor() == ((DirtBlock*)down)->getColor()) {
               addToGroup(thisBlock, down);
               gameGrid[row][col]->moveTo(glm::vec2(col, -row));
            }
         }
         else {
            addToGroup(thisBlock, down);
            gameGrid[row][col]->moveTo(glm::vec2(col, -row));
         }
      }
   }
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
   
   for (int row = NUMROWS - 1; row >= 0; row--) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            if (gameGrid[row][col]->willFall()) {
               gameGrid[row][col]->incrementFallCounter(toAdd);
            }
            if (gameGrid[row][col]->shouldFall()) {
               gameGrid[row][col]->fall(toAdd);
               if (gameGrid[row + 1][col] != 0 && gameGrid[row][col]->isIntersecting((Collidable*)gameGrid[row + 1][col])) {
                  if (gameGrid[row + 1][col]->getMovableType() == NUT && gameGrid[row][col]->getMovableType() == PLAYER) {
                     player.addToScore(5);
                     gameGrid[row + 1][col] = 0;
                  }
                  else if (gameGrid[row + 1][col]->getMovableType() == PLAYER) {
                     if (gameGrid[row][col]->getMovableType() == NUT) {
                        player.addToScore(5);
                        gameGrid[row][col] = 0;
                     }
                     else {
                        player.died();
                     }
                  }
                  else {
                     maybeAddToGroupDown(row, col);
                     maybeAddToGroupLeft(row, col);
                     maybeAddToGroupRight(row, col);
                     if (gameGrid[row][col]->getMovableType() == BLOCK && ((Block*)gameGrid[row][col])->isInAGroup()) {
                        ((Block*)gameGrid[row][col])->getGroupIn()->stopGroupFalling();
                        ((Block*)gameGrid[row][col])->getGroupIn()->setGroupCanNotFall();
                        ((Block*)gameGrid[row][col])->getGroupIn()->adjustGroupPosition();
                     }
                     else {
                        gameGrid[row][col]->stopFalling();
                        gameGrid[row][col]->setCanNotFall();
                        gameGrid[row][col]->moveTo(glm::vec2(col, -row));
                     }
                  }
                  if (gameGrid[row][col] != 0) {
                     double place = gameGrid[row][col]->getCenter().y;
                     int closestWhole = (int)place;
                     if (place - closestWhole < -.9 || place - closestWhole > -.1) {
                        maybeAddToGroupLeft(row, col);
                        maybeAddToGroupRight(row, col);
                     }
                  }
               }
               if (gameGrid[row][col] != 0 && (int)(-(gameGrid[row][col]->getCenter().y) + .5) > row) {
                  if (gameGrid[row][col]->getMovableType() == PLAYER) {
                     playerPosition.x += 1;
                  }
                  gameGrid[row + 1][col] = gameGrid[row][col];
                  gameGrid[row][col] = 0;
               }
            }
         }
      }
   }
}

void NutGame::addToGroup(Block* thisBlock, Block* otherBlock) {
   bool wasAdded = false;
   BlockGroup* temp;

   if (thisBlock->isInAGroup()) {
      if (otherBlock->isInAGroup()) {
         if (thisBlock->getGroupIn() != otherBlock->getGroupIn()) {
            temp = otherBlock->getGroupIn();
            otherBlock->getGroupIn()->moveGroupTo(thisBlock->getGroupIn());
            delete temp;
            wasAdded = true;
         }
      }
      else {
         thisBlock->getGroupIn()->addBlock(otherBlock);
         wasAdded = true;
      }
   }
   else if (otherBlock->isInAGroup()) {
      otherBlock->getGroupIn()->addBlock(thisBlock);
      wasAdded = true;
   }
   else {
      (new BlockGroup())->addBlock(thisBlock);
      thisBlock->getGroupIn()->addBlock(otherBlock);
      wasAdded = true;
   }
   if (wasAdded) {
      thisBlock->getGroupIn()->stopGroupFalling();
      thisBlock->getGroupIn()->setGroupCanNotFall();
      thisBlock->getGroupIn()->adjustGroupPosition();
      if (!checkingGroupForOtherAdds) {
         checkingGroupForOtherAdds = true;
         checkGroupForOtherAdds(thisBlock->getGroupIn());
         checkingGroupForOtherAdds = false;
      }
   }
}

void NutGame::checkGroupForOtherAdds(BlockGroup* group) {
   int row, col;
   
   for (std::list<Block*>::iterator it = group->getListBeginIt(); it != group->getListEndIt(); ++it) {
      row = (*it)->getCenter().y * -1;
      col = (*it)->getCenter().x;
      maybeAddToGroupLeft(row, col);
      maybeAddToGroupDown(row, col);
      maybeAddToGroupRight(row, col);
   }
}

void NutGame::checkGrid(double toAdd) {
   for (int row = NUMROWS - 1; row >= 0; row--) {
      for (int col = 0; col < NUMCOLS; col++) {
         Movable * curObj = gameGrid[row][col];
         if (curObj != 0) {
            setFallingMovables(row, col);
            if (curObj->getMovableType() == BLOCK && ((Block*)curObj)->isDead()) {
               ((Block*)curObj)->incrementDeathCounter(toAdd);
               if (((Block*)curObj)->shouldDestroy()) {
                  delete gameGrid[row][col];
                  gameGrid[row][col] = 0;
               }
            }
         }
      }
   }
   finishSettingFallingMovables();
}

void NutGame::setFallingMovables(int row, int col) {
   Block* thisBlock;

   if (row < NUMROWS - 2 && gameGrid[row][col]->getMovableType() == BLOCK
       && ((Block*)gameGrid[row][col])->isInAGroup()) {
      thisBlock = (Block*)gameGrid[row][col];
      if (!thisBlock->isDead()) {
         if (row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
                  gameGrid[row + 1][col]->getMovableType() == PLAYER ||
                  gameGrid[row + 1][col]->willFall() || gameGrid[row + 1][col]->getCanFall())){
            thisBlock->setCanFall();
         }
         if (thisBlock == thisBlock->getGroupIn()->getTopRight() && 
             thisBlock->getGroupIn()->entireGroupCanFall()) {
            mightFallGroupList.push_back(thisBlock->getGroupIn());
         }
         else if (thisBlock == thisBlock->getGroupIn()->getTopRight()) {
            thisBlock->getGroupIn()->setGroupCanNotFall();
         }
      }
   }
   else if (row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
            gameGrid[row + 1][col]->getMovableType() == PLAYER ||
            gameGrid[row + 1][col]->willFall())) {
      gameGrid[row][col]->setCanFall();
      gameGrid[row][col]->setWillFall();
   }
   else if (row < NUMROWS - 2 && gameGrid[row + 1][col] != 0 &&
            !gameGrid[row + 1][col]->willFall() && gameGrid[row + 1][col]->getCanFall()) {
      gameGrid[row][col]->setCanFall();
      mightFallBlockList.push_back(gameGrid[row][col]);
   }
   
   if (row < NUMROWS - 2 && gameGrid[row][col]->getMovableType() == PLAYER &&
       gameGrid[row + 1][col] != 0 && gameGrid[row + 1][col]->getMovableType() == NUT) {
      gameGrid[row][col]->setCanFall();
      gameGrid[row][col]->setWillFall();
   }
}

void NutGame::finishSettingFallingMovables() {
   bool somethingWasUpdated = true;
   int row, col;
   
   while(somethingWasUpdated) {
      somethingWasUpdated = false;
      for (std::vector<BlockGroup*>::iterator it = mightFallGroupList.begin(); it != mightFallGroupList.end(); ++it) {
         for (std::list<Block*>::iterator it2 = (*it)->getListBeginIt(); it2 != (*it)->getListEndIt(); ++it2) {
            row = (*it2)->getCenter().y * -1 + .5;
            col = (*it2)->getCenter().x + .5;
            if (!(row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
                     gameGrid[row + 1][col]->getMovableType() == PLAYER ||
                     gameGrid[row + 1][col]->willFall() || gameGrid[row + 1][col]->getCanFall()))){
               ((Block*)gameGrid[row][col])->getGroupIn()->setGroupCanNotFall();
               mightFallGroupList.erase(it);
               --it;
               somethingWasUpdated = true;
               break;
            }
         }
      }
      for (std::vector<Movable*>::iterator it = mightFallBlockList.begin(); it != mightFallBlockList.end(); ++it) {
         row = (*it)->getCenter().y * -1 + .5;
         col = (*it)->getCenter().x + .5;
         if (!(row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
             gameGrid[row + 1][col]->getMovableType() == PLAYER ||
             gameGrid[row + 1][col]->willFall() || gameGrid[row][col]->getCanFall()))) {
            gameGrid[row][col]->setCanNotFall();
            mightFallBlockList.erase(it);
            --it;
            somethingWasUpdated = true;
         }
      }
   }
   
   for (std::vector<BlockGroup*>::iterator it = mightFallGroupList.begin(); it != mightFallGroupList.end(); ++it) {
      (*it)->setGroupWillFall();
   }
   mightFallGroupList.clear();
   for (std::vector<Movable*>::iterator it = mightFallBlockList.begin(); it != mightFallBlockList.end(); ++it) {
      (*it)->setWillFall();
   }
   mightFallBlockList.clear();
}

void NutGame::handleKeyInput() {

   glm::vec2 pos;
   bool blockExists;
   Block* block;

   if (!player.getIsDead()) {
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
         /*
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
         */
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
}

std::vector<Movable*> NutGame::getObjectsToDraw() {
   int count = playerPosition.x - NUM_BLOCKS_VISIBLE_ABOVE_PLAYER;
   std::vector<Movable*> objects;
   
   if (count < 0) {
      count = 0;
   }

   for (int row = count; row < count + NUM_TOTAL_BLOCKS_VISIBLE && row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            //TRACE("block " << row << ", " << col << ", pointer: " << gameGrid[row][col]);
            objects.push_back(gameGrid[row][col]);
            //DEBUG("row " << row << ", col " << col << ",  " << gameGrid[row][col]);
         }
         else {
            //TRACE("i'm out of the game");
         }
      }
   }

   return objects;
}


