#include "NutGame.hpp"

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#endif

NutGame::NutGame() {
   this->drillDownPressed = false;
   this->drillLeftPressed = false;
   this->drillUpPressed = false;
   this->drillRightPressed = false;
   this->left = false;
   this->right = false;
   this->up = false;
   this->checkingGroupForOtherAdds = false;
   releasedSinceDownPress = true;
   releasedSinceLeftPress = true;
   releasedSinceUpPress = true;
   releasedSinceRightPress = true;
   this->nutsLeft = 0;
   this->score = 0;
}

NutGame::~NutGame() {
   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0 && gameGrid[row][col]->getMovableType() != PLAYER) {
            //DEBUG("Deleted Here 1");
            delete gameGrid[row][col];
         }
      }
   }
}

void NutGame::init() {
   std::FILE *file = fopen("levels/level25per.txt", "r");
   //std::FILE *file = fopen("levels/test.txt", "r");
   char c;

   for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col< NUMCOLS; col++) {
         c = fgetc(file);
         //They are all .99 because there  is some rounding errors with collision detection if they are 1
         if (c == 'X') {
            gameGrid[row][col] = new StoneBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'S') {
            gameGrid[row][col] = new SandBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'C') {
            gameGrid[row][col] = new CrystalBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'L') {
            gameGrid[row][col] = new LavaBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'R') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 1);
         }
         else if (c == 'G') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 3);
         }
         else if (c == 'B') {
            gameGrid[row][col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 2);
         }
         else if (c == 'P') {
            player = Player(glm::vec3(col, -row, 0), 0.99f, 0.99f);
            gameGrid[row][col] = &player;
         }
         else if (c == '0') {
            gameGrid[row][col] = 0;
         }
         else if (c == 'N') {
            gameGrid[row][col] = new Nut(glm::vec3(col, -row, 0), 0.99f, 0.99f);
            nutsLeft++;
         }
         else if (c == 'H') {
            gameGrid[row][col] = new HardHat(glm::vec3(col, -row, 0), 0.99f, 0.99f);
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
            }
         }
         else {
            addToGroup(thisBlock, left);
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
            }
         }
         else {
            addToGroup(thisBlock, right);
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
            }
         }
         else {
            addToGroup(thisBlock, down);
         }
      }
   }
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
   return drillDownPressed;
}

bool NutGame::isDrillingUp() {
   return drillUpPressed;
}

bool NutGame::isDrillingLeft() {
   return drillLeftPressed;
}

bool NutGame::isDrillingRight() {
   return drillRightPressed;
}

void NutGame::fallDown(double toAdd) {
   double before, after;
   
   if (player.movingHorizontal() == LEFT) {
      if (player.getCenter().x > player.getMovingToColumn()) {
         before = player.getCenter().x;
         player.moveHorizontal(HOR_MOVE_RATE * ((gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)] != 0 && gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)]->getMovableType() == BLOCK) ? (((Block*)gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)])->getMoveSpeedPercentage() / 100.0 * toAdd) : toAdd) * -1);
         after = player.getCenter().x;
         if (before > (int)(player.getCenter().x) + .5 && after < (int)(player.getCenter().x) + .5) {
            gameGrid[(int)(player.getCenter().y - .5) * -1][(int)player.getCenter().x] = &player;
            gameGrid[(int)(player.getCenter().y - .5) * -1][(int)(player.getCenter().x + .5) + 1] = 0;
         }
      }
      else if (!left) {
         player.setMoveHorizontal(STOPPED);
         player.moveTo(glm::vec2(player.getMovingToColumn(), player.getCenter().y));
      }
   }
   else if (player.movingHorizontal() == RIGHT) {
      if (player.getCenter().x < player.getMovingToColumn()) {
         before = player.getCenter().x;
         player.moveHorizontal(HOR_MOVE_RATE * ((gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)] != 0 && gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)]->getMovableType() == BLOCK) ? (((Block*)gameGrid[(int)(player.getCenter().y * -1 + 1)][(int)(player.getCenter().x + .5)])->getMoveSpeedPercentage() / 100.0 * toAdd) : toAdd));
         after = player.getCenter().x;
         if (before < (int)(player.getCenter().x) + .5 && after > (int)(player.getCenter().x) + .5) {
            gameGrid[(int)(player.getCenter().y - .5) * -1][(int)(player.getCenter().x + .5)] = &player;
            gameGrid[(int)(player.getCenter().y - .5) * -1][(int)player.getCenter().x] = 0;
         }
      }
      else if (!right) {
         player.setMoveHorizontal(STOPPED);
         player.moveTo(glm::vec2(player.getMovingToColumn(), player.getCenter().y));
      }
   }
      
   for (int row = NUMROWS - 1; row >= 0; row--) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            if (gameGrid[row][col]->willFall()) {
               gameGrid[row][col]->incrementFallCounter(toAdd);
            }
            if (gameGrid[row][col]->shouldFall()) {
               gameGrid[row][col]->fall(toAdd);
               if (gameGrid[row + 1][col] != 0 && gameGrid[row][col]->isIntersecting((Collidable*)gameGrid[row + 1][col])) {
                  if (gameGrid[row][col]->getMovableType() == PLAYER) {
                     if (gameGrid[row + 1][col]->getMovableType() == NUT) {
                        nutsLeft--;
                        Assets::playSound(Assets::NUT_S);
                        addToScore(5);
                        //DEBUG("Deleted Here 2");
                        delete gameGrid[row + 1][col];
                        gameGrid[row + 1][col] = 0;
                     }
                     else if (gameGrid[row + 1][col]->getMovableType() == HARDHAT) {
                        player.giveHardHat();
                        delete gameGrid[row + 1][col];
                        gameGrid[row + 1][col] = 0;
                     }
                     else if (gameGrid[row + 1][col]->getMovableType() == BLOCK) {
                        if (((Block*)gameGrid[row + 1][col])->getBlockType() == LAVABLOCK) {
                           player.died();
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
                              gameGrid[row][col]->moveTo(glm::vec2(gameGrid[row][col]->getCenter().x, -row));
                           }
                        }
                     }
                  }
                  else if (gameGrid[row + 1][col]->getMovableType() == PLAYER) {
                     if (gameGrid[row][col]->getMovableType() == NUT) {
                        nutsLeft--;
                        Assets::playSound(Assets::NUT_S);
                        addToScore(5);
                        //DEBUG("Deleted Here 3");
                        delete gameGrid[row][col];
                        gameGrid[row][col] = 0;
                     }
                     else if (gameGrid[row][col]->getMovableType() == HARDHAT) {
                        player.giveHardHat();
                        delete gameGrid[row][col];
                        gameGrid[row][col] = 0;
                     }
                     else {
                        if (player.getHasHardHat()) {
                           player.takeAwayHardHat();
                           ((Block*)gameGrid[row][col])->makeDead();
                           if (((Block*)gameGrid[row][col])->isInAGroup()) {
                              ((Block*)gameGrid[row][col])->getGroupIn()->stopGroupFalling();
                              ((Block*)gameGrid[row][col])->getGroupIn()->adjustGroupPosition();
                              ((Block*)gameGrid[row][col])->getGroupIn()->destroy();
                              delete ((Block*)gameGrid[row][col])->getGroupIn();
                           }
                           gameGrid[row][col]->stopFalling();
                           gameGrid[row][col]->setCanNotFall();
                           gameGrid[row][col]->moveTo(glm::vec2(gameGrid[row][col]->getCenter().x, -row));
                           //delete gameGrid[row][col];
                           //gameGrid[row][col] = 0;
                        }
                        else {
                           player.died();
                        }
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
                        gameGrid[row][col]->moveTo(glm::vec2(gameGrid[row][col]->getCenter().x, -row));
                     }
                  }
                  
               }
               if (gameGrid[row][col] != 0 && (int)(-(gameGrid[row][col]->getCenter().y) + .5) > row) {
                  //DEBUG("Deleted Here 4");
                  if (gameGrid[row + 1][col] != 0 && gameGrid[row + 1][col]->getMovableType() != PLAYER) {
                     delete gameGrid[row + 1][col];
                  }
                  gameGrid[row + 1][col] = gameGrid[row][col];
                  gameGrid[row][col] = 0;
               }
               else if (gameGrid[row][col] != 0) {
                  double place = gameGrid[row][col]->getCenter().y;
                  int closestWhole = (int)place;
                  if (place - closestWhole < -.9 || place - closestWhole > -.1) {
                     maybeAddToGroupLeft(row, col);
                     maybeAddToGroupRight(row, col);
                  }
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
            //DEBUG("Deleted Here 5");
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
            if (curObj->getMovableType() == BLOCK) {
               ((Block *)curObj)->updatePSystem(toAdd);
            }
            if (curObj->getMovableType() == BLOCK && ((Block*)curObj)->isDead()) {
               ((Block*)curObj)->incrementDeathCounter(toAdd);
               if (((Block*)curObj)->shouldDestroy()) {
                  //DEBUG("Deleted Here 6");
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
      if (gameGrid[row + 1][col] != 0 && gameGrid[row + 1][col]->getMovableType() == PLAYER) {
         if (gameGrid[row][col]->getMovableType() == BLOCK && !((Block*)gameGrid[row + 1][col])->isDead()) {
            gameGrid[row][col]->setCanFall();
            gameGrid[row][col]->setWillFall();
         }
      }
      else {
         gameGrid[row][col]->setCanFall();
         gameGrid[row][col]->setWillFall();
      }
   }
   else if (row < NUMROWS - 2 && gameGrid[row + 1][col] != 0 &&
            !gameGrid[row + 1][col]->willFall() && gameGrid[row + 1][col]->getCanFall()) {
      gameGrid[row][col]->setCanFall();
      mightFallBlockList.push_back(gameGrid[row][col]);
   }
   
   if (row < NUMROWS - 2 && gameGrid[row][col]->getMovableType() == PLAYER &&
       gameGrid[row + 1][col] != 0 && (gameGrid[row + 1][col]->getMovableType() == NUT || 
       (gameGrid[row + 1][col]->getMovableType() == BLOCK && 
       (((Block*)gameGrid[row + 1][col])->getBlockType() == LAVABLOCK)))) {
      gameGrid[row][col]->setCanFall();
      gameGrid[row][col]->setWillFall();
   }
}
//Note: Zach, I edited this a tiny bit because there  were seg fault issues. It still does the same thing, fixed it. -Drew
void NutGame::finishSettingFallingMovables() {
   bool somethingWasUpdated = true;
   int row, col;
   bool removedItem = false;
   
   while(somethingWasUpdated) {
      somethingWasUpdated = false;
      for (std::vector<BlockGroup*>::iterator it = mightFallGroupList.begin(); it != mightFallGroupList.end(); ) {//++it) {
         for (std::list<Block*>::iterator it2 = (*it)->getListBeginIt(); it2 != (*it)->getListEndIt(); ++it2) {
            row = (*it2)->getCenter().y * -1 + .5;
            col = (*it2)->getCenter().x + .5;
            if (!(row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 ||
               gameGrid[row + 1][col]->getMovableType() == PLAYER ||
               gameGrid[row + 1][col]->willFall() || gameGrid[row + 1][col]->getCanFall()))){
               ((Block*)gameGrid[row][col])->getGroupIn()->setGroupCanNotFall();

               it = mightFallGroupList.erase(it);
               //--it;
               removedItem = true;
               somethingWasUpdated = true;
               break;
            }
         }
         if (!removedItem) {
            ++it;
         }
         else {
            removedItem = false;
         }
      }
      for (std::vector<Movable*>::iterator it = mightFallBlockList.begin(); it != mightFallBlockList.end(); ) {//++it) {
         row = (*it)->getCenter().y * -1 + .5;
         col = (*it)->getCenter().x + .5;
         if (!(row < NUMROWS - 2 && (gameGrid[row + 1][col] == 0 || 
             gameGrid[row + 1][col]->getMovableType() == PLAYER ||
             gameGrid[row + 1][col]->willFall() || gameGrid[row][col]->getCanFall()))) {
            gameGrid[row][col]->setCanNotFall();
            
            //--it;
            
            it = mightFallBlockList.erase(it+1);
            somethingWasUpdated = true;
         }
         else {
            ++it;
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
   Block* block;

   if (!isGameOver() && !isGameWon()) {
      if (drillLeftPressed && releasedSinceLeftPress) {
         releasedSinceLeftPress = false;
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (pos.x >= .5) {
            if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + .5 - 1)] != 0) {
               if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + .5 - 1)]->getMovableType() == BLOCK) {
                  block = (Block *)gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + .5 - 1)];
                  player.drillBlock(block);
                  if (block->isDead() && block->deathCounter == -1) {
                     addToScore(1);
                     block->deathCounter = 0;
                  }
               }
            }
         }
      }
      else if (drillRightPressed && releasedSinceRightPress) {
         releasedSinceRightPress = false;
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (pos.x < NUMCOLS - 1) {
            if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)] != 0) {
               if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)]->getMovableType() == BLOCK) {
                  block = (Block *)gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)];
                  player.drillBlock(block);
                  if (block->isDead() && block->deathCounter == -1) {
                      addToScore(1);
                     block->deathCounter = 0;
                  }
               }
            }
         }
      }
      else if (drillDownPressed && releasedSinceDownPress) {
         releasedSinceDownPress = false;
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (gameGrid[(int)(pos.y + 1.5)][(int)(pos.x + .5)] != 0) {
            if (gameGrid[(int)(pos.y + 1.5)][(int)(pos.x + .5)]->getMovableType() == BLOCK) {
               block = (Block *)gameGrid[(int)(pos.y + 1.5)][(int)(pos.x + .5)];
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  addToScore(1);
                  block->deathCounter = 0;
               }
            }
         }
      }
      else if (drillUpPressed && releasedSinceUpPress) {
         releasedSinceUpPress = false;
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (pos.y >= .5) {
            if (gameGrid[(int)(pos.y - 0.5)][(int)(pos.x + .5)] != 0) {
               if (gameGrid[(int)(pos.y - 0.5)][(int)(pos.x + .5)]->getMovableType() == BLOCK) {
                  block = (Block *)gameGrid[(int)(pos.y - 0.5)][(int)(pos.x + .5)];
                  player.drillBlock(block);
                  if (block->isDead() && block->deathCounter == -1) {
                     addToScore(1);
                     block->deathCounter = 0;
                  }
               }
            }
         }
      }
      
      
      if (left) {
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (pos.x >= .5) {
            if ((gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)] == 0 || gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)]->getMovableType() == PLAYER)) {
               player.setMovingToColumn((int)(player.getCenter().x - .00001));
               player.setMoveHorizontal(LEFT);
            }
            else {
               if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)] != 0 && gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)]->getMovableType() != BLOCK) {
                  if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)]->getMovableType() == NUT) {
                     nutsLeft--;
                     Assets::playSound(Assets::NUT_S);
                     addToScore(5);
                  }
                  else if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)]->getMovableType() == HARDHAT) {
                     player.giveHardHat();
                  }
                  //DEBUG("Deleted Here 6");
                  delete gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)];
                  //DEBUG("Deleted Here 6 After");
                  gameGrid[(int)(pos.y + 0.5)][(int)(pos.x - .00001)] = 0;
                  player.setMovingToColumn((int)(player.getCenter().x - .00001));
                  player.setMoveHorizontal(LEFT);
               }
            }
         }
      }
      else if (right) {
         pos = glm::vec2(player.getCenter());
         pos.y *= -1;
         if (pos.x < NUMCOLS - 1) {
            if ((gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)] == 0 || gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)]->getMovableType() == PLAYER)) {
               player.setMovingToColumn((int)(player.getCenter().x + .00001 + 1));
               player.setMoveHorizontal(RIGHT);
            }
            else {
               if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)] != 0 && gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)]->getMovableType() != BLOCK) {
                  if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)]->getMovableType() == NUT) {
                     nutsLeft--;
                     Assets::playSound(Assets::NUT_S);
                     addToScore(5);
                  }
                  else if (gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)]->getMovableType() == HARDHAT) {
                     player.giveHardHat();
                  }
                  //DEBUG("Deleted Here 7");
                  delete gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)];
                  gameGrid[(int)(pos.y + 0.5)][(int)(pos.x + 1)] = 0;
                  player.setMovingToColumn((int)(player.getCenter().x + .00001 + 1));
                  player.setMoveHorizontal(RIGHT);
               }
            }
         }
      }
      else if (up) {
         player.setShouldJump();
      }
   }
}

std::list<Renderable*> NutGame::getObjectsToDraw() {
   int count = player.getCenter().y - NUM_BLOCKS_VISIBLE_ABOVE_PLAYER;
   std::list<Renderable*> objects;
   
   if (count < 0) {
      count = 0;
   }

   for (int row = count; row < count + NUM_TOTAL_BLOCKS_VISIBLE && row < NUMROWS; row++) {
      for (int col = 0; col < NUMCOLS; col++) {
         if (gameGrid[row][col] != 0) {
            /*if (gameGrid[row][col]->getMovableType() == BLOCK) {
               if (((Block*)gameGrid[row][col])->isInAGroup()) {
                  objects.push_back(((Block*)gameGrid[row][col])->getGroupIn());
               }
               else {
                  objects.push_back(gameGrid[row][col]);
               }
            }*/
            //else {
               objects.push_back(gameGrid[row][col]);
            //}
         }
      }
   }
   objects.unique();
   return objects;
}

int NutGame::getNutsLeft() {
   return nutsLeft;
}


void NutGame::addToScore(int num) {
	score += num;
}

int NutGame::getScore() {
	return score;
}

int NutGame::getDepth() {
   return (int)(player.getCenter().y) * -1;
}

bool NutGame::isGameOver() {
   return player.getIsDead();
}

bool NutGame::isGameWon() {
   return nutsLeft == 0;
}


