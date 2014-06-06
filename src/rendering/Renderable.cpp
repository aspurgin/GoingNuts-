#include "Renderable.hpp"
#include "Renderer.hpp"

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
   ftshader = Assets::getFlatTextureShader();
   type = DIRT_BLOCK_R;
   typeColor = 1;
   spinning = false;
}

void Renderable::updateSpin() {
   if (spinning) {
      ang += 0.5;
      //let it spin twice before reset
      if (ang > 720) {
         ang = 0;
      }
   }
}

void Renderable::setSpin(bool spin) {
   spinning = spin;
}

void Renderable::renderBloom() {
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      //modelTrans.translate(glm::vec3(0, 0, -1));
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, glm::vec3(0, 1, 0));
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBright, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();
   
   safe_glEnableVertexAttribArray(bshader.h_aPositionBright);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBright, 3, GL_FLOAT, GL_FALSE, 0, 0);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   //modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(bshader.h_aPositionBright);
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
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(lmShader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

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
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   
   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

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
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(ctshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(ctshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(ctshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   
   safe_glEnableVertexAttribArray(ctshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model->uvHandle());
   safe_glVertexAttribPointer(ctshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   // Bind our colorTexture to Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, colorTexture.textureID);

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glUniform1i(ctshader.h_myTextureSampler, 0);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

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
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(pshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(pshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(pshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   
   //Bind the index
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(pshader.h_aPosition);
   safe_glDisableVertexAttribArray(pshader.h_aNormal);
}

void Renderable::ptsRender() {
   glUseProgram(ptshader.shadeProg);
   
   ptshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scaleX, scaleY, scaleZ);
   modelTrans.rotate(ang, axis);

   safe_glUniformMatrix4fv(ptshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   
   safe_glEnableVertexAttribArray(ptshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(ptshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(ptshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(ptshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model->uvHandle());
   safe_glVertexAttribPointer(ptshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_aTangent);
   glBindBuffer(GL_ARRAY_BUFFER, model->tangentHandle());
   safe_glVertexAttribPointer(ptshader.h_aTangent, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(ptshader.h_aBitangent);
   glBindBuffer(GL_ARRAY_BUFFER, model->bitangentHandle());
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

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();


   safe_glDisableVertexAttribArray(ptshader.h_aPosition);
   safe_glDisableVertexAttribArray(ptshader.h_aNormal);
   //safe_glDisableVertexAttribArray(ptshader.h_vertexUV);
}

void Renderable::bRenderBright() {
   // BRIGHT PASS
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBright, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Set base color
   bshader.setBase(mat);

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionBright);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBright, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());

   //glActiveTexture(GL_TEXTURE0);
   //glBindTexture(GL_TEXTURE_2D, 0);
   //glBindTexture(GL_TEXTURE_2D, Renderer::fbBloom_tex1);
   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionBright);
   // END OF BRIGHT PASS
}

void Renderable::bRenderBlurHor() {
   // BLUR PASS Horizontal
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBlurHor, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionBlurHor);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBlurHor, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   // glEnable(GL_TEXTURE_2D);
   //glBindTexture(GL_TEXTURE_2D, 0);
   // glActiveTexture(GL_TEXTURE0);
   // glBindTexture(GL_TEXTURE_2D, Renderer::fbBloom_tex1);
   glUniform1i(bshader.h_myTextureSamplerBlurHor, 0);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionBlurHor);
   // glDisable(GL_TEXTURE_2D);
   // END OF BLUR PASS Horizontal
}

void Renderable::bRenderBlurVer() {
   // BLUR PASS Vertical
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(position);
      modelTrans.scale(scaleX, scaleY, scaleZ);
      modelTrans.rotate(ang, axis);
      //Bind the model matrix
      safe_glUniformMatrix4fv(bshader.h_uModelMatrixBlurVer, glm::value_ptr(modelTrans.modelViewMatrix));
   modelTrans.popMatrix();

   //Bind the positions
   safe_glEnableVertexAttribArray(bshader.h_aPositionBlurVer);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionBlurVer, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   // glEnable(GL_TEXTURE_2D);
   //glBindTexture(GL_TEXTURE_2D, 0);
   // glActiveTexture(GL_TEXTURE0);
   // glBindTexture(GL_TEXTURE_2D, Renderer::fbBloom_tex2);
   glUniform1i(bshader.h_myTextureSamplerBlurVer, 0);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionBlurVer);
   // END OF BLUR PASS Vertical

}

void Renderable::bRenderComposite() {
   // COMPOSITE PASS
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
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(bshader.h_aPositionComposite, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("positions: " << glGetError());

   //Bind the normals
   safe_glEnableVertexAttribArray(bshader.h_aNormalComposite);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(bshader.h_aNormalComposite, 3, GL_FLOAT, GL_FALSE, 0, 0);
   //DEBUG("normals: " << glGetError());

   //Bind the index
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());

   // Set our "colorTextureSampler" sampler to user Texture Unit 0

   // glBindTexture(GL_TEXTURE_2D, 0);
   // glEnable(GL_TEXTURE_2D);
   // glActiveTexture(GL_TEXTURE0);
   // glBindTexture(GL_TEXTURE_2D, Renderer::fbBloom_tex2);

   glUniform1i(bshader.h_myTextureSamplerComposite, 0);

   //Draw the object!
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);

   safe_glDisableVertexAttribArray(bshader.h_aPositionComposite);
}

void Renderable::ftsRender() {
   glUseProgram(ftshader.shadeProg);
   
   ftshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scaleX,scaleY,scaleZ);

   safe_glUniformMatrix4fv(ftshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   
   safe_glEnableVertexAttribArray(ftshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(ftshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   //UVs
   safe_glEnableVertexAttribArray(ftshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model->uvHandle());
   safe_glVertexAttribPointer(ftshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   // Bind our texture in Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, colorTexture.textureID);
   // Set our "myTextureSampler" sampler to user Texture Unit 0
   glUniform1i(ftshader.h_myTextureSampler, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(ftshader.h_aPosition);
   safe_glDisableVertexAttribArray(ftshader.h_vertexUV);
}

void Renderable::render() {
   updateSpin();
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
         bRenderComposite();
         break;
      case FT_SHADE:
         ftsRender();
         break;
   }
}

void Renderable::setPosition(glm::vec3 pos) {
   this->position = pos;
}

void Renderable::setScale(float scaleX, float scaleY, float scaleZ) {
   this->scaleX = scaleX;
   this->scaleY = scaleY;
   this->scaleZ = scaleZ;
}



