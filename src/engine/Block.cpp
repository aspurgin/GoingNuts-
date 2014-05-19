#include "Block.hpp"

int moveableType = BLOCK;

Block::Block() {
   deathCounter = -1;
   shouldScale = false;
   timesDrilled = 0;
   groupIn = 0;
   model = Assets::getMesh(Assets::BLOCK_M);
   cshader = Assets::getCShader();
   scale = 0.48f;
   scaleX = 0.48f;
   scaleY = 0.48f;
   scaleZ = 0.48f;
   curScale = 0.48f;
   this->modelTrans.useModelViewMatrix();
   model.debug();
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
      else {
         genParticles();
      }
      state = DEAD;
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
   scale = curScale;
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
   deathCounter = 0;
   genParticles();
}

bool Block::isInAGroup() {
   return groupIn != 0;
}

BlockGroup* Block::getGroupIn() {
   return groupIn;
}

void Block::putInGroup(BlockGroup* group) {
   groupIn = group;
   curScale = 0.5f;
   scale = curScale;
}

void Block::setScale() {
   if (willFall()) {
      if (shouldScale) {
         shouldScale = false;
         scale = 0.45;
      }
      else {
         shouldScale = true;
         scale = curScale;
      }
   }
   else if (isDead()) {
      scale = curScale - deathCounter;
   }
}

void Block::render() {
   setScale();
   position = center;
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(glm::vec3(0, 0, -1));
   modelTrans.translate(center);
   modelTrans.scale(scale, scale, scale + 1);
   modelTrans.rotate(0, glm::vec3(0, 1, 0));
   setModel();

   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();
   //DEBUG("idxs: " << glGetError());

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Block::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

void Block::genParticles() {
   psystem->moveTo(center);
   psystem->setMatID(this->mat);
   psystem->burst(25);
}
