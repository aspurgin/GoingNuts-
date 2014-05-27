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
   bshader = Assets::getBShader();
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

void Renderable::bRender() {
   Light light = Light();
   light.setPosition(glm::vec3(0.0, 0.0, 6.0f));
   Camera camera = Camera(glm::vec3(3.0f, 1.0f, 10.0f), glm::vec3(3.0f, 0.0f, 5.0f), glm::vec3(0, 1, 0));
   camera.setEye(glm::vec3(3.0f, 0.0, 8.0f));

   // BRIGHT PASS
   glBindFramebuffer(GL_FRAMEBUFFER, 2);
   glViewport(0, 0, 1280, 720);
   glUseProgram(bshader.shadeProgBright);
   camera.setView(bshader.h_uViewMatrixBright);
   camera.setProjectionMatrix(bshader.h_uProjMatrixBright, (float)1280 / 720, 0.1f, 100.0f);

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBright, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionBright);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBright, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionBright);
   glDisable(GL_TEXTURE_2D);

   glUseProgram(0);
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   // END OF BRIGHT PASS


   // BLUR PASS
   glBindFramebuffer(GL_FRAMEBUFFER, 2);
   glViewport(0, 0, 1280, 720);
   glUseProgram(bshader.shadeProgBlur);
   camera.setView(bshader.h_uViewMatrixBlur);
   camera.setProjectionMatrix(bshader.h_uProjMatrixBlur, (float)1280 / 720, 0.1f, 100.0f);

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBlur, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionBlur);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBlur, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glEnable(GL_TEXTURE_2D);
   glActiveTexture(GL_TEXTURE2);
   glBindTexture(GL_TEXTURE_2D, 12);
   glUniform1i(bshader.h_myTextureSamplerBlur, 2);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionBlur);
   glDisable(GL_TEXTURE_2D);

   glUseProgram(0);
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   // END OF BLUR PASS


   // COMPOSITE PASS
   glViewport(0, 0, (GLsizei)1280, (GLsizei)720);
   glDisable(GL_TEXTURE_2D);
   glUseProgram(bshader.shadeProgComposite);
   camera.setView(bshader.h_uViewMatrixComposite);
   camera.setProjectionMatrix(bshader.h_uProjMatrixComposite, (float)1280 / 720, 0.1f, 100.0f);

   safe_glUniform3f(bshader.h_lightPosComposite, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(bshader.h_cameraPosComposite, -camera.eye.x, -camera.eye.y, -camera.eye.z);

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixComposite, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();
   
   //Color the object
   bshader.setMaterial(mat);

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionComposite);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionComposite, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(bshader.h_aNormalComposite);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(bshader.h_aNormalComposite, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glEnable(GL_TEXTURE_2D);

   glActiveTexture(GL_TEXTURE2);
   glBindTexture(GL_TEXTURE_2D, 12);

   glUniform1i(bshader.h_myTextureSamplerComposite, 2);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionComposite);
   glDisable(GL_TEXTURE_2D);

   // END OF PASS
   glUseProgram(0);
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
      case B_SHADE:
         bRender();
         break;
   }
}



