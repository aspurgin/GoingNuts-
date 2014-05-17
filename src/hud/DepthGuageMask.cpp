#include "DepthGuageMask.hpp"


DepthGuageMask::DepthGuageMask() {
   this->mask1 = Assets::getMesh(Assets::DEPTH_GUAGE_MASK_1_M);
   this->mask2 = Assets::getMesh(Assets::DEPTH_GUAGE_MASK_2_M);
   //this->cshader = Assets::getCShaderTexture();
   this->cshader = Assets::getFlatTextureShader();
   //this->scale = 2.085f;
   this->mat = 1;
   //this->modelTrans.useModelViewMatrix();
   //this->position = glm::vec3(0.0,0.0,-7.0);

   this->texture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
}

void DepthGuageMask::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(glm::vec3(-11.3,6.55,3.0));
   modelTrans.scale(2.085f,2.8f,1.0);
   //modelTrans.rotate(ang, glm::vec3(1.0, 0.0, 0.0));
   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, mask1.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, mask1.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   //UVs
   safe_glEnableVertexAttribArray(cshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, mask1.uvHandle());
   safe_glVertexAttribPointer(cshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);


   // Bind our texture in Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, texture.textureID);
   // Set our "myTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_myTextureSampler, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mask1.idxHandle());
   glDrawElements(GL_TRIANGLES, mask1.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
   safe_glDisableVertexAttribArray(cshader.h_vertexUV);


   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(glm::vec3(-11.3,-4.00,4.0));
   modelTrans.scale(2.085f,2.8f,1.0);
   //modelTrans.rotate(ang, glm::vec3(1.0, 0.0, 0.0));
   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, mask2.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, mask2.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   //UVs
   safe_glEnableVertexAttribArray(cshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, mask2.uvHandle());
   safe_glVertexAttribPointer(cshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);


   // Bind our texture in Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, texture.textureID);
   // Set our "myTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_myTextureSampler, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mask2.idxHandle());
   glDrawElements(GL_TRIANGLES, mask2.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
   safe_glDisableVertexAttribArray(cshader.h_vertexUV);
}

void DepthGuageMask::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}