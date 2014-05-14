#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->drill = new NormalDrill();
   this->velocity = 1.f;
   this->lives = 3;
   this->isDead = false;
<<<<<<< HEAD
   model = Assets::getMesh(Assets::SQUIRREL_M);
   this->hasHardHat = false;
=======
   this->model = Assets::getMesh(Assets::SQUIRREL_M);
>>>>>>> Revert to old shader, that was a failure...
   this->cshader = Assets::getCShader();
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
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(center);
   modelTrans.scale(scale);
   modelTrans.rotate(ang, glm::vec3(0, 1, 0));
   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   
   modelTrans.popMatrix();
   //printf("num verts: %d\n", model.getVertCount());
   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Player::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
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

void Player::giveHardHat() {
   hasHardHat = true;
}

void Player::takeAwayHardHat() {
   hasHardHat = false;
}
