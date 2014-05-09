#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   drill = Drill();
   this->velocity = 1.f;
   this->lives = 3;
   model = Assets::getMesh(Assets::SQUIRREL_M);
   this->cshader = Assets::getCShader();
   this->mat = 5;
   this->scale = 1;
   this->modelTrans.useModelViewMatrix();
   printf("here!\n");
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

void Player::addToScore(int num) {
	score += num;
}

int Player::getScore() {
	return score;
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
   glBindBuffer(GL_ARRAY_BUFFER, model.objHandle());
   //printf("one position: %d\n", exampleCube->PositionHandle);
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, block.faceHandle);

   /*safe_glEnableVertexAttribArray(h_taTexCoord);
   glBindBuffer(GL_ARRAY_BUFFER, TexBuffObj);
   safe_glVertexAttribPointer(h_taTexCoord, 2, GL_FLOAT, GL_FALSE, 0, 0);*/
   // draw!
   //printf("indexLength: %d\n", exampleCube->IndexBufferLength);

   //glDrawElements(GL_TRIANGLES, block.numFaceElements(), GL_UNSIGNED_SHORT, 0);   
   glDrawArrays(GL_TRIANGLES, 0, model.getVertCount());
   modelTrans.popMatrix();
   //printf("num verts: %d\n", model.getVertCount());
   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Player::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}