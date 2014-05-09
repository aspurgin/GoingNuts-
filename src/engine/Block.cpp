#include "Block.hpp"

int moveableType = BLOCK;

Block::Block() {
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
	if (fallCounter >= 1.5) {
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

void Block::attatchTo(Block *block) {
	
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
   //cshader.setMaterial(mat);

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

void Block::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}