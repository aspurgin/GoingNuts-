#include "Nut.hpp"

Nut::Nut() {}

Nut::Nut(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->velocity = 1.f;
   this->model = Assets::getMesh(Assets::NUT_M);
   this->cshader = Assets::getCShader();
   this->scale = 0.8f;
   this->mat = 5;
   this->modelTrans.useModelViewMatrix();
}

int Nut::getMovableType() {
   return NUT;
}

bool Nut::shouldFall() {
	if (fallCounter != -1) {
		return true;
	}
	return false;
}

void Nut::setWillFall() {
	fallCounter = 0;
}

void Nut::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(center);
   modelTrans.scale(scale);
   modelTrans.rotate(90, glm::vec3(0, 1, 0));
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

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Nut::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}
