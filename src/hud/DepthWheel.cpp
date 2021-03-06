#include "DepthWheel.hpp"


DepthWheel::DepthWheel(int type, glm::vec3 position) {
   model = Assets::getMesh(Assets::DEPTH_WHEEL_M);
   //this->cshader = Assets::getCShaderTexture();
   this->cshader = Assets::getFlatTextureShader();
   this->scale = 0.4f;
   this->mat = 1;
   this->modelTrans.useModelViewMatrix();
   this->position = position + glm::vec3(-12.5, 2.68, 0.0);
   desiredAngle = 0.0f;
   ang = 0.0f;

   if (type == Assets::WHITE_DEPTH_WHEEL_T)
   {
      this->texture = Assets::getTexture(Assets::WHITE_DEPTH_WHEEL_T);
   }
   else
   {
      this->texture = Assets::getTexture(Assets::BLACK_DEPTH_WHEEL_T);
   }
}

void DepthWheel::render() {
   cshader.setMaterial(mat);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();

   modelTrans.translate(position);
   modelTrans.scale(scale);

   // If the current angle is not within the the error margin of the desired angle, 
   // rotate the wheel
   if (!(ang >= desiredAngle - ERROR_MARGIN && ang <= desiredAngle + ERROR_MARGIN))
   {
      ang += ANGLE_BETWEEN_NUMBERS/10.0f;

      //Make sure the angle stays between 0 and 360
      if (ang >= 360.0f)
       {
          ang -= 360;
       } 
   }

   modelTrans.rotate(ang, glm::vec3(1.0, 0.0, 0.0));

   setModel();
   
   safe_glEnableVertexAttribArray(cshader.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, model->vertHandle());
   safe_glVertexAttribPointer(cshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(cshader.h_aNormal);
   glBindBuffer(GL_ARRAY_BUFFER, model->normHandle());
   safe_glVertexAttribPointer(cshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

   //UVs
   safe_glEnableVertexAttribArray(cshader.h_vertexUV);
   glBindBuffer(GL_ARRAY_BUFFER, model->uvHandle());
   safe_glVertexAttribPointer(cshader.h_vertexUV, 2, GL_FLOAT, GL_FALSE, 0, 0);



   // Bind our texture in Texture Unit 0
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, texture.textureID);

   // Set our "myTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_myTextureSampler, 0);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, model->idxHandle());
   glDrawElements(GL_TRIANGLES, model->getIdxCount(), GL_UNSIGNED_INT, 0);
   modelTrans.popMatrix();


   safe_glDisableVertexAttribArray(cshader.h_aPosition);
   safe_glDisableVertexAttribArray(cshader.h_aNormal);
   safe_glDisableVertexAttribArray(cshader.h_vertexUV);
}

void DepthWheel::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix)); 
}

void DepthWheel::set(int number)
{
   desiredAngle = number * ANGLE_BETWEEN_NUMBERS;
}