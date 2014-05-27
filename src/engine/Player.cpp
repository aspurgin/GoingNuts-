#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->drill = new NormalDrill();
   this->velocity = 1.f;
   this->lives = 3;
   this->isDead = false;
   this->model = Assets::getMesh(Assets::SQUIRREL_M);
   this->hasHardHat = false;
   this->shaderType = C_SHADE;
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
   this->texture = Assets::getTexture(Assets::SQUIRREL_T);
}

void Player::drillBlock(Block *block) {
   drill->drillBlock(block);
}

int Player::getMovableType() {
   return PLAYER;
}

bool Player::shouldFall() {
	if (fallCounter != -1) {
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
   model.setAt("run", glfwGetTime());
   switch(horDirection) {
      case LEFT:
         ang = -90;
         break;
      case RIGHT:
         ang = 90;
         break;
      case STOPPED:
         ang = 0;
         break;
   }
}

void Player::render() {
   checkMoveState();
   position = center;
   
   Renderable::render();
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
   numDynamites--;
}

int Player::getNumDynamites() {
   return numDynamites;
}

void Player::takeAwayEnergy(float toSub) {
   foodPercent -= 5 * toSub;
}

float Player::getEnergyLeft() {
   return foodPercent;
}

void Player::addEnergy(float toAdd) {
   foodPercent += toAdd;
}
