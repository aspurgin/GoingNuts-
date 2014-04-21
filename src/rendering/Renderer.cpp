#include "Renderer.hpp"

Renderer::Renderer() {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "../../assets/shaders/mesh_vert.glsl"), 
                                             textFileRead((char *) "../../assets/shaders/mesh_frag.glsl"));
   light = Light();
   block = Mesh();
   squirrel = Mesh();
}

Renderer::Renderer(int width, int height) {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "../../assets/shaders/mesh_vert.glsl"),
                                             textFileRead((char *) "../../assets/shaders/mesh_frag.glsl"));
   light = Light();
   winWidth = width;
   winHeight = height;
   squirrel = Mesh();
   block = Mesh();
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

void Renderer::render() {
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glUseProgram(pshader.shadeProg);
   modelTrans.loadIdentity();

   camera.setView(pshader.h_uViewMatrix);
   camera.setProjectionMatrix(pshader.h_uProjMatrix, winWidth, winHeight);
   safe_glUniform3f(pshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(pshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   safe_glUniform3f(pshader.h_lightColor, light.color.x, light.color.y, light.color.z);

   setModel();
   pshader.setMaterial(3);
   
   modelTrans.pushMatrix();
      setModel();
      safe_glEnableVertexAttribArray(pshader.h_aPosition);
      glBindBuffer(GL_ARRAY_BUFFER, block.posHandle);
      //printf("one position: %d\n", exampleCube->PositionHandle);
      safe_glVertexAttribPointer(pshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
      safe_glEnableVertexAttribArray(pshader.h_aNormal);
      glBindBuffer(GL_ARRAY_BUFFER, block.normHandle);
      safe_glVertexAttribPointer(pshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);
      glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, block.faceHandle);
      /*safe_glEnableVertexAttribArray(h_taTexCoord);
      glBindBuffer(GL_ARRAY_BUFFER, TexBuffObj);
      safe_glVertexAttribPointer(h_taTexCoord, 2, GL_FLOAT, GL_FALSE, 0, 0);*/
      // draw!
      //printf("indexLength: %d\n", exampleCube->IndexBufferLength);
      glDrawElements(GL_TRIANGLES, block.numFaceElements(), GL_UNSIGNED_SHORT, 0);   
   modelTrans.popMatrix();
      
   safe_glDisableVertexAttribArray(pshader.h_aPosition);
   safe_glDisableVertexAttribArray(pshader.h_aNormal);

}