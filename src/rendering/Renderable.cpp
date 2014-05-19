#include "Renderable.hpp"

Renderable::Renderable() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   mat = 0;
   ang = 0;
   lmShader = Assets::getLightMapShader();
   position = glm::vec3(0);
}

void Renderable::renderLightMap() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
   modelTrans.translate(glm::vec3(0, 0, -1));
   modelTrans.translate(position);
   modelTrans.scale(scaleX, scaleY, scaleZ);
   modelTrans.rotate(ang, glm::vec3(0, 1, 0));
   safe_glUniformMatrix4fv(lmShader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));

   safe_glEnableVertexAttribArray(lmShader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(lmShader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(lmShader.h_aPosition);
}

