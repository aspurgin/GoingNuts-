#include "MovableDynamite.hpp"

MovableDynamite::MovableDynamite() {}

MovableDynamite::MovableDynamite(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->velocity = 1.f;
   this->model = Assets::getMesh(Assets::TNT_M);
   this->cshader = Assets::getCShader();
   this->scale = 1.0f;
   this->scaleX = 1.0f;
   this->scaleY = 1.0f;
   this->scaleZ = 1.0f;
   this->mat = 6;
   this->ang = 0;
   this->modelTrans.useModelViewMatrix();
   this->offset = glm::vec3(0.0f,0.0f,0.0f);
   this->floatingUp = true;
}

int MovableDynamite::getMovableType() {
   return DYNAMITE;
}

bool MovableDynamite::shouldFall() {
	if (fallCounter != -1) {
		return true;
	}
	return false;
}

void MovableDynamite::setWillFall() {
	fallCounter = 0;
}

void MovableDynamite::updateOffset() {
   float height = offset.y;
   if(floatingUp) {
      height += 0.002;
   }
   else {
      height -= 0.002;
   }

   if(height > 0.1) {
      floatingUp = false;
      height -= 0.002;
   }
   else if(height < -0.1) {
      floatingUp = true;
      height += 0.002;
   }

   offset.y = height;
}

void MovableDynamite::render() {
   updateOffset();
   position = center;// + offset;
   Renderable::render();

   /*cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(offset);
   modelTrans.translate(center);
   modelTrans.scale(scale);
   modelTrans.rotate(90, glm::vec3(0, 1, 0));
   setModel();
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);*/
}

void MovableDynamite::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}
