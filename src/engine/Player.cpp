#include "Player.hpp"
#include "../rendering/Renderer.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->drill = new NormalDrill();
   this->velocity = 1.f;
   this->lives = 3;
   this->isDead = false;
   this->model = Assets::getMesh(Assets::SQUIRREL_M);
   this->hasHardHat = false;
   this->shaderType = CT_SHADE;
   this->mat = 5;
   this->scale = 1;
   scaleX = 1;
   scaleY = 1;
   scaleZ = 1;
   this->modelTrans.useModelViewMatrix();
   this->shouldJump = false;
   this->isJumping = false;
   this->horDirection = STOPPED;
   this->movingToColumn = 3;
   this->numDynamites = 0;
   this->foodPercent = 100;
   this->colorTexture = Assets::getTexture(Assets::SQUIRREL_T);
   this->hat = HardHat(center, 0.99, 0.99);
   this->hat.setScale(0.25f, 0.25f, 0.25f);
   this->hat.setSpin(false);
   this->threwDynamite = false;
   this->state = STATIC;
   this->type = PLAYER_R;
   drillCount = 0;
}
  
void Player::drillBlock(Block *block, int state) {
   drill->drillBlock(block);
   this->state = state;
   drillCount = 0;
}

int Player::getMovableType() {
   return PLAYER;
}

bool Player::shouldFall() {
	if (fallCounter != -1) {
      //state = FALLING;
		return true;
	}
	return false;
}

void Player::setWillFall() {
	fallCounter = 0;
}

void Player::died() {
   isDead = true;
}

bool Player::getIsDead() {
   return isDead;
}

void Player::checkMoveState() {
   switch(horDirection) {
      case LEFT:
         if (state != DRILLING_LEFT) {
            state = RUNNING_LEFT;
         }
         //model->setAt("drillSide", glfwGetTime());
         //model->setAt("run", glfwGetTime()*2);
         ang = -90;
         break;
      case RIGHT:
         if (state != DRILLING_RIGHT) {
            state = RUNNING_RIGHT;
         }
         //model->setAt("drillSide", glfwGetTime());
         //model->setAt("run", glfwGetTime()*2);
         ang = 90;
         break;
      case STOPPED:
         //state = STATIC;
         //model->setAt("drill", glfwGetTime());
         ang = 0;
         break;
   }
}

void Player::setAnimation() {
   switch(state) {
      case DRILLING_DOWN:
      case DRILLING_UP:
         model->setAt("drill", glfwGetTime()*2);
         drillCount++;
         if(drillCount > 20) {
            state = STATIC;
            drillCount = 0;
         }
         ang = 0;
         break;
      case DRILLING_LEFT:
         model->setAt("drillSide", glfwGetTime()*2);
         drillCount++;
         if(drillCount > 20) {
            state = STATIC;
            drillCount = 0;
         }
         ang = -90;
         break;
      case DRILLING_RIGHT:
         model->setAt("drillSide", glfwGetTime()*2);
         drillCount++;
         if(drillCount > 20) {
            state = STATIC;
            drillCount = 0;
         }
         ang = 90;
         break;
      case RUNNING_LEFT:
      case RUNNING_RIGHT:
         model->setAt("run", glfwGetTime()*2);
         break;
      case FALLING:
         break;
      case STATIC:
         model->setAt("test", glfwGetTime());
         ang = 0;
         break;
   }
}

void Player::render() {
   checkMoveState();
   setAnimation();
   
   position = center;
   Renderable::render();

   if(hasHardHat) {
      //printf("here!\n");
      Renderer::useCShader();

      glm::vec3 off(0.1, 0.4, 0.5);
      hat.setPosition(position + off);
      hat.render();
      glUseProgram(0);
   }
}

void Player::setShouldJump() {
   shouldJump = true;
}

void Player::setShouldNotJump() {
   shouldJump = false;
}

bool Player::getShouldJump() {
   return shouldJump;
}

void Player::setIsJumping() {
   isJumping = true;
}

void Player::setIsNotJumping() {
   isJumping = false;
}

bool Player::getIsJumping() {
   return isJumping;
}

Direction Player::movingHorizontal() {
   return horDirection;
}

void Player::setMoveHorizontal(Direction dir) {
   horDirection = dir;
}

void Player::setMovingToColumn(int column) {
   movingToColumn = column;
}

int Player::getMovingToColumn() {
   return movingToColumn;
}

bool Player::getHasHardHat() {
   return hasHardHat;
}

void Player::collectHardHat() {
   hasHardHat = true;
}

void Player::takeAwayHardHat() {
   hasHardHat = false;
}

void Player::collectSuperDrill() {
   delete this->drill;
   this->drill = new SuperDrill();
}

void Player::collectDynamite() {
   numDynamites++;
}

void Player::throwDynamite() {
   threwDynamite = true;
   numDynamites--;
}

int Player::getNumDynamites() {
   return numDynamites;
}

void Player::takeAwayEnergy(float toSub) {
   foodPercent -= 2.5 * toSub;
   if (foodPercent <= 0) {
      isDead = true;
   }
}

float Player::getEnergyLeft() {
   return foodPercent;
}

void Player::addEnergy(float toAdd) {
   foodPercent += toAdd;
}
