#include "Cylinder.hpp"


Cylinder::Cylinder() {
   this->model = Assets::getMesh(Assets::CYLINDER_M);
   this->cshader = Assets::getPhongTextureShader();
   this->scale = 0.5f;
   this->mat = 1;
   this->modelTrans.useModelViewMatrix();
   this->position = glm::vec3(3.0, 0.0f, 0.0);
   this->colorTexture = Assets::getTexture(Assets::CYLINDER_COLOR_T);
   this->normalTexture = Assets::getTexture(Assets::CYLINDER_NORMAL_T);
}

void Cylinder::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scale);
   modelTrans.rotate(45.0f, glm::vec3(0.0, 0.0, 1.0));

   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(cshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model.uvHandle());
   safe_glVertexAttribPointer(cshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(cshader.h_aTangent);
   glBindBuffer(GL_ARRAY_BUFFER, model.tangentHandle());
   safe_glVertexAttribPointer(cshader.h_aTangent, 3, GL_FLOAT, GL_FALSE, 0, 0);

   safe_glEnableVertexAttribArray(cshader.h_aBitangent);
   glBindBuffer(GL_ARRAY_BUFFER, model.bitangentHandle());
   safe_glVertexAttribPointer(cshader.h_aBitangent, 3, GL_FLOAT, GL_FALSE, 0, 0);


   // Bind our colorTexture to Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, colorTexture.textureID);

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_colorTextureSampler, 0);

   // Bind our normalTexture to Texture Unit 1
   glActiveTexture(GL_TEXTURE1);
   glBindTexture(GL_TEXTURE_2D, normalTexture.textureID);

   // Set our "normalTextureSampler" sampler to user Texture Unit 1
   glUniform1i(cshader.h_normalTextureSampler, 1);

   cshader.setMaterial(3);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();


   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
   //safe_glDisableVertexAttribArray(cshader.h_vertexUV);
}

void Cylinder::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}