#include "Block.hpp"

int moveableType = BLOCK;

Block::Block() {
   deathCounter = -1;
   shouldScale = false;
   timesDrilled = 0;
   groupIn = 0;
   model = Assets::getMesh(Assets::BLOCK_M);
   cshader = Assets::getCShader();
   scale = 0.5f;
   this->modelTrans.useModelViewMatrix();
}

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled() {
   timesDrilled++;
   if (timesDrilled >= getStrength()) {
      if (isInAGroup()) {
         groupIn->destroy();
         delete groupIn;
      }
      state = DEAD;
      mat = 0;
   }
}

int Block::getBlockType() {
   return blockType;
}

bool Block::isDead() {
   return timesDrilled >= getStrength();
}

bool Block::shouldDestroy() {
   if (isDead()) {
      return deathCounter >= .2;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
   scale -= toAdd;
}

int Block::getMovableType() {
   return BLOCK;
}

bool Block::shouldFall() {
	if (fallCounter >= HANG_TIME) {
      return true;
   }
   scale = 0.5;
   return false;
}

void Block::setWillFall() {
   if (fallCounter < 0) {
      fallCounter = 0;
   }
}

void Block::makeDead() {
	timesDrilled = getStrength();
   state = DEAD;
   mat = 0;
}

bool Block::isInAGroup() {
   return groupIn != 0;
}

BlockGroup* Block::getGroupIn() {
   return groupIn;
}

void Block::putInGroup(BlockGroup* group) {
   groupIn = group;
}

void Block::setScale() {
   if (willFall()) {
      if (shouldScale) {
         shouldScale = false;
         scale = 0.45;
      }
      else {
         shouldScale = true;
         scale = 0.5;
      }
   }
   else if (isDead()) {
      scale = 0.5 - deathCounter;
   }
}

void Block::render() {

   setScale();
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(center);
   modelTrans.scale(scale);
   modelTrans.rotate(0, glm::vec3(0, 1, 0));
   setModel();
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.objHandle());

   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   glDrawArrays(GL_TRIANGLES, 0, model.getVertCount());
   modelTrans.popMatrix();


   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Block::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

