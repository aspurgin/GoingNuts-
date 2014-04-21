#include "Renderer.hpp"

Renderer::Renderer() {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "Phong_Vert.glsl"), 
                                             textFileRead((char *) "Phong_Frag.glsl"));
   light = Light();
   block = Mesh("Cube.obj");
   //squirrel = Mesh();
}

Renderer::Renderer(int width, int height) {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "Phong_Vert.glsl"),
                                             textFileRead((char *) "Phong_Frag.glsl"));
   
   light = Light();
   winWidth = width;
   winHeight = height;
   //squirrel = Mesh();
   block = Mesh("Cube.obj");
   //block.debug();
   //exit(1);
   initialize();
}

void Renderer::initialize() {
   // Start Of User Initialization
   glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
   // Black Background
   glClearDepth(1.0f);	// Depth Buffer Setup
   glDepthFunc(GL_LEQUAL);	// The Type Of Depth Testing
   glEnable(GL_DEPTH_TEST);// Enable Depth Testing

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
}

void Renderer::setModel() {
   safe_glUniformMatrix4fv(pshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

void Renderer::renderCube(glm::vec3 transl, int mat) {
   
   pshader.setMaterial(mat);
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(transl);
      setModel();
      safe_glEnableVertexAttribArray(pshader.h_aPosition);
      glBindBuffer(GL_ARRAY_BUFFER, block.objHandle);
      //printf("one position: %d\n", exampleCube->PositionHandle);
      safe_glVertexAttribPointer(pshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
      safe_glEnableVertexAttribArray(pshader.h_aNormal);
      glBindBuffer(GL_ARRAY_BUFFER, block.normHandle);
      safe_glVertexAttribPointer(pshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

      //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, block.faceHandle);

      /*safe_glEnableVertexAttribArray(h_taTexCoord);
      glBindBuffer(GL_ARRAY_BUFFER, TexBuffObj);
      safe_glVertexAttribPointer(h_taTexCoord, 2, GL_FLOAT, GL_FALSE, 0, 0);*/
      // draw!
      //printf("indexLength: %d\n", exampleCube->IndexBufferLength);

      //glDrawElements(GL_TRIANGLES, block.numFaceElements(), GL_UNSIGNED_SHORT, 0);   
      glDrawArrays(GL_TRIANGLES, 0, block.vertices.size());
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(pshader.h_aPosition);
   safe_glDisableVertexAttribArray(pshader.h_aNormal);
}

void Renderer::render() {
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glUseProgram(pshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   camera.setView(pshader.h_uViewMatrix);
   camera.setProjectionMatrix(pshader.h_uProjMatrix, winWidth, winHeight);
   safe_glUniform3f(pshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(pshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   safe_glUniform3f(pshader.h_lightColor, light.color.x, light.color.y, light.color.z);

   setModel();
   pshader.setMaterial(2);
   glm::vec3 pos(0, 0, 0);
   renderCube(pos, 2);
   glUseProgram(0);

}