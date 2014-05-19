#include "Wall.hpp"

Wall::Wall() {
}

Wall::Wall(glm::vec3 pos) {
   scaleX = 1;
   scaleY = 10;
   scaleZ = 2;
   mat = 4;
   cshader = Assets::getCShader();
   model = Assets::getMesh(Assets::BLOCK_M);
   this->position = pos;
}

void Wall::setScale(glm::vec3 scale) {
   scaleX = scale.x;
   scaleY = scale.y;
   scaleZ = scale.z;
}

void Wall::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(glm::vec3(0, 0, -1));
   modelTrans.translate(position);
   modelTrans.scale(scaleX, scaleY, scaleZ);
   modelTrans.rotate(0, glm::vec3(0, 1, 0));
   setModel();

   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   DEBUG("positions: " << glGetError());

   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   DEBUG("normals: " << glGetError());

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();
   DEBUG("idxs: " << glGetError());

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Wall::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}