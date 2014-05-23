#include "Renderable.hpp"

Renderable::Renderable() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   mat = 0;
   ang = 0;
   scale = 1;
   scaleX = 1;
   scaleY = 1;
   scaleZ = 1;
   position = glm::vec3(0);
   axis = glm::vec3(0, 1, 0);
   lmShader = Assets::getLightMapShader();
   cshader = Assets::getCShader();
   ctshader = Assets::getCShaderTexture();
   ptshader = Assets::getPhongTextureShader();
   pshader = Assets::getPShader();
   
}

void Renderable::renderLightMap() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      //modelTrans.translate(glm::vec3(0, 0, -1));
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, glm::vec3(0, 1, 0));
      safe_glUniformMatrix4fv(lmShader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   safe_glEnableVertexAttribArray(lmShader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(lmShader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   //modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(lmShader.h_aPosition);
}

void Renderable::csRender() {
   //Perform model transforms
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Color the object
   cshader.setMaterial(mat);

   //Bind the positions
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   
   //Draw the object!
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
}

void Renderable::ctsRender() {
   //Perform model transforms
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(ctshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();
   
   //Color the object
   ctshader.setMaterial(mat);

   //Bind the positions
   safe_glEnableVertexAttribArray(ctshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(ctshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(ctshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(ctshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   
   //NOTE INCOMPLETE. DOES NOT HAVE TEXTURE COORDS IN HERE YET.

   safe_glEnableVertexAttribArray(ctshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model.uvHandle());
   safe_glVertexAttribPointer(ctshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   // Bind our colorTexture to Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, colorTexture.textureID);

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glUniform1i(ctshader.h_myTextureSampler, 0);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(ctshader.h_aPosition);
   safe_glDisableVertexAttribArray(ctshader.h_aNormal);
}

void Renderable::psRender() {
   //Perform model transforms
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(pshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Color the object
   pshader.setMaterial(mat);

   //Bind the positions
   safe_glEnableVertexAttribArray(pshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(pshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(pshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(pshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   
   //Bind the index
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(pshader.h_aPosition);
   safe_glDisableVertexAttribArray(pshader.h_aNormal);
}

void Renderable::ptsRender() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scale);
   modelTrans.rotate(ang, axis);
   //Bind the model matrix
   safe_glUniformMatrix4fv(ptshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   safe_glEnableVertexAttribArray(ptshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(ptshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(ptshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(ptshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model.uvHandle());
   safe_glVertexAttribPointer(ptshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_aTangent);
   glBindBuffer(GL_ARRAY_BUFFER, model.tangentHandle());
   safe_glVertexAttribPointer(ptshader.h_aTangent, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_aBitangent);
   glBindBuffer(GL_ARRAY_BUFFER, model.bitangentHandle());
   safe_glVertexAttribPointer(ptshader.h_aBitangent, 3, GL_FLOAT, GL_FALSE, 0, 0);


   // Bind our colorTexture to Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, colorTexture.textureID);

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glUniform1i(ptshader.h_colorTextureSampler, 0);

   // Bind our normalTexture to Texture Unit 1
   glActiveTexture(GL_TEXTURE1);
   glBindTexture(GL_TEXTURE_2D, normalTexture.textureID);

   // Set our "normalTextureSampler" sampler to user Texture Unit 1
   glUniform1i(ptshader.h_normalTextureSampler, 1);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(ptshader.h_aPosition);
   safe_glDisableVertexAttribArray(ptshader.h_aNormal);

}

void Renderable::render() {
   switch (shaderType) {
      case C_SHADE:
         csRender();
         break;
      case CT_SHADE:
         ctsRender();
         break;
      case P_SHADE:
         psRender();
         break;
      case PT_SHADE:
         ptsRender();
         break;
   }
}



