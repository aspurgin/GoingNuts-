#include "Renderer.hpp"

Renderer::Renderer() {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"), 
                                             textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));
   

   //pshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
                                            //textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

   light = Light();
   squirrel = Mesh("Squirrel.obj");
   block = Mesh("Cube.obj");
   //squirrel = Mesh();
}

Renderer::Renderer(int width, int height, NutGame *game) {
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"),
                                             textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));

   //pshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
                                            //textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));
   
   light = Light();
   winWidth = width;
   winHeight = height;
   squirrel = Mesh("assets/models/Squirrel.obj");
   block = Mesh("assets/models/Cube.obj");
   ngame = game;
   //block.debug();
   //exit(1);
   initialize();
}

void Renderer::initialize() {
   block.buildBuffers();
   squirrel.buildBuffers();
   // Start Of User Initialization
   glClearColor(0.09f, 0.0f, 0.21f, 1.0f);
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

void Renderer::renderCube(glm::vec3 transl, int mat, float scale) {
   
   //pshader.setMaterial(mat);
   pshader.setMaterial(mat);
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(transl);
      modelTrans.scale(0.5 - scale);
      modelTrans.rotate(0, glm::vec3(0, 1, 0));
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

void Renderer::renderSquirrel(glm::vec3 transl, int mat, float ang) {
   //pshader.setMaterial(mat);
   pshader.setMaterial(mat);
   modelTrans.loadIdentity();
   modelTrans.pushMatrix();
      modelTrans.translate(transl);
      modelTrans.rotate(ang, glm::vec3(0, 1, 0));
      setModel();
      safe_glEnableVertexAttribArray(pshader.h_aPosition);
      glBindBuffer(GL_ARRAY_BUFFER, squirrel.objHandle);
      //printf("one position: %d\n", exampleCube->PositionHandle);
      safe_glVertexAttribPointer(pshader.h_aPosition, 3, GL_FLOAT, GL_FALSE, 0, 0);
      safe_glEnableVertexAttribArray(pshader.h_aNormal);
      glBindBuffer(GL_ARRAY_BUFFER, squirrel.normHandle);
      safe_glVertexAttribPointer(pshader.h_aNormal, 3, GL_FLOAT, GL_FALSE, 0, 0);

      //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, block.faceHandle);

      /*safe_glEnableVertexAttribArray(h_taTexCoord);
      glBindBuffer(GL_ARRAY_BUFFER, TexBuffObj);
      safe_glVertexAttribPointer(h_taTexCoord, 2, GL_FLOAT, GL_FALSE, 0, 0);*/
      // draw!
      //printf("indexLength: %d\n", exampleCube->IndexBufferLength);

      //glDrawElements(GL_TRIANGLES, block.numFaceElements(), GL_UNSIGNED_SHORT, 0);   
      glDrawArrays(GL_TRIANGLES, 0, squirrel.vertices.size());
   modelTrans.popMatrix();

   safe_glDisableVertexAttribArray(pshader.h_aPosition);
   safe_glDisableVertexAttribArray(pshader.h_aNormal);
}

void Renderer::render() {
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glUseProgram(pshader.shadeProg);//pshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   camera.setView(pshader.h_uViewMatrix);
   camera.setProjectionMatrix(pshader.h_uProjMatrix, winWidth, winHeight);
   safe_glUniform3f(pshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(pshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   safe_glUniform3f(pshader.h_lightColor, light.color.x, light.color.y, light.color.z);

   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));

   setModel();
   std::vector<Movable*> currObjs = ngame->getObjectsToDraw();
   //printf("num objs: %d", currObjs.size());
   for (int i = 0; i < currObjs.size(); i++) {
      Movable *obj = currObjs.at(i);
      //TRACE("centerPos: " << obj->getCenter().x);
      switch (obj->getMovableType()) {
         case BLOCK:
            switch (((Block *)obj)->getBlockType()) {
               case DIRTBLOCK:
                  if(((Block *) obj)->isDead()) {
                     renderCube(obj->getCenter(), 0, ((Block *) obj)->deathCounter);   
                  }
                  else if(((Block *) obj)->willFall()){ 
                  //printf("here\n");
                     if(((Block *) obj)->shouldScale) {
                        ((Block *) obj)->shouldScale = false;
                        renderCube(obj->getCenter(), ((DirtBlock *)obj)->getColor(), .05);
                     }
                     else {
                        ((Block *) obj)->shouldScale = true;
                        renderCube(obj->getCenter(), ((DirtBlock *)obj)->getColor(), 0);
                     }
                  }
                  else {
                     renderCube(obj->getCenter(), ((DirtBlock *)obj)->getColor(), 0);
                  }
                  break;
               case STONEBLOCK:
                  if(((Block *) obj)->willFall()){ 
                  //printf("here\n");
                     if(((Block *) obj)->shouldScale) {
                        ((Block *) obj)->shouldScale = false;
                        renderCube(obj->getCenter(), 4, .05);
                     }
                     else {
                        ((Block *) obj)->shouldScale = true;
                        renderCube(obj->getCenter(), 4, 0);
                     }
                  }
                  else {
                     renderCube(obj->getCenter(), 4, 0);
                  }
                  break;
               default:
                  break;
            }
            break;
         case PLAYER:
            //printf("squirrel pos: x: %f, y: %f\n", obj->getCenter().x, obj->getCenter().y);
            renderSquirrel(obj->getCenter(), 5, 0);
            break;
         case NUT:
            renderCube(obj->getCenter(), 5, 0.2);
         default:
            break;
            
      }
   }
   /*pshader.setMaterial(2);
   glm::vec3 pos(0, 0, 0);
   //renderCube(pos, 1, 0);
   pos.x = 5;
   renderSquirrel(pos, 2, 0);*/
   glUseProgram(0);

}
