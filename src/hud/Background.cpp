#include "Background.hpp"


Background::Background() {
   this->model = Assets::getMesh(Assets::BACKGROUND_M);
   this->cshader = Assets::getCShaderTexture();
   //this->cshader = Assets::getFlatTextureShader();
   this->scale = 3.0f;
   this->mat = 1;
   this->modelTrans.useModelViewMatrix();
   this->position = glm::vec3(0.0,0.0,-7.0);

   this->texture = Assets::getTexture(Assets::HUD_ELEMENTS_T);
}

void Background::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scale);
   //modelTrans.rotate(ang, glm::vec3(1.0, 0.0, 0.0));
   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model.vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model.normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   //UVs
   safe_glEnableVertexAttribArray(cshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model.uvHandle());
   safe_glVertexAttribPointer(cshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);



   // Bind our texture in Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, texture.textureID);
   // Set our "myTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_myTextureSampler, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model.idxHandle());
   glDrawElements(GL_TRIANGLES, model.getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();


   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
   safe_glDisableVertexAttribArray(cshader.h_vertexUV);
}

void Background::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}

void Background::set(int number)
{
   ang = number * 36.0f;
}