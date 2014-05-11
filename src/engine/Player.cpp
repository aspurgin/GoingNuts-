#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->drill = Drill();
   this->velocity = 1.f;
   this->lives = 3;
   this->isDead = false;
   model = Assets::getMesh(Assets::SQUIRREL_M);
   this->cshader = Assets::getCShader();
   this->mat = 5;
   this->scale = 1;
   this->modelTrans.useModelViewMatrix();
   this->shouldJump = false;
   this->isJumping = false;
}

void Player::drillBlock(Block *block) {
   drill.drillBlock(block);
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

void Player::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(center);
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
