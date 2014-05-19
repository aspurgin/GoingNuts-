#include "Renderer.hpp"

Renderer::Renderer() {
//   WARN("WRONG ENTRY POINT");
   //camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"), 
                                             textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));
   

   cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
                                            textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

   light = Light();
   squirrel = Mesh("Squirrel.obj");
   block = Mesh("Cube.obj");
   //squirrel = Mesh();
}

void Renderer::initDebugLightMap() {
   float ss_quad_pos[] = {
      0.5, 0.5,
      1.0, 0.5,
      1.0, 1.0,
      1.0, 1.0,
      0.5, 1.0,
      0.5, 0.5
   };

   float ss_quad_st[] = {
      0.0, 0.0,
      1.0, 0.0,
      1.0, 1.0,
      1.0, 1.0,
      0.0, 1.0,
      0.0, 0.0
   };

   glGenBuffers(1, &lmDebugPosHandle);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugPosHandle);
   glBufferData(GL_ARRAY_BUFFER, sizeof(ss_quad_pos), ss_quad_pos, GL_STATIC_DRAW);

   glGenBuffers(1, &lmDebugTHandle);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugTHandle);
   glBufferData(GL_ARRAY_BUFFER, sizeof(ss_quad_st), ss_quad_st, GL_STATIC_DRAW);
}


Renderer::Renderer(int width, int height, NutGame *game, Hud* hud) {
   camera = Camera(glm::vec3(3.0f, 1.0f, 10.0f), glm::vec3(3.0f, 0.0f, 5.0f), glm::vec3(0, 1, 0));
   //pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"),
     //                                        textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));

   //cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
     //                                       textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

   dSS = ShaderUtils::installDebugShadowShader(textFileRead((char *) "assets/shaders/DebugShadow_Vert.glsl"), 
                                               textFileRead((char *) "assets/shaders/DebugShadow_Frag.glsl"));
   cshader = Assets::getCShader();
   ctshader = Assets::getFlatTextureShader();
   lmShader = Assets::getLightMapShader();
   light = Light();
   winWidth = width;
   winHeight = height;
   ngame = game;
   this->hud = hud;
   //block.debug();
   //exit(1);
   //left = Wall(glm::vec3(-1.5, -10, 0));
   //right = Wall(glm::vec3(7.5, -10, 0));
   back = Wall(glm::vec3(3.0, 0.0, -3.0));
   back.setScale(glm::vec3(4.0, 1.0, 0.1));
   toggle = false;
   initialize();
   
}

void Renderer::initialize() {
   //block.buildBuffers();
   //squirrel.buildBuffers();
   // Start Of User Initialization
   glClearColor(0.09f, 0.0f, 0.21f, 1.0f);
   // Black Background
   glClearDepth(1.0f);	// Depth Buffer Setup
   glDepthFunc(GL_LEQUAL);	// The Type Of Depth Testing
   glEnable(GL_DEPTH_TEST);// Enable Depth Testing
   glEnable(GL_CULL_FACE);
   glCullFace(GL_BACK);
   glEnable(GL_TEXTURE_2D);
   
   //Note: found from tutorial: http://antongerdelan.net/opengl/texture_shadows.html
      // dimensions of depth map
   shadow_size = 256;

   // create framebuffer
   fb = 0;
   glGenFramebuffers (1, &fb);
   glBindFramebuffer (GL_FRAMEBUFFER, fb);

   // create texture for framebuffer
   fb_tex = 0;
   glGenTextures (1, &fb_tex);
   glActiveTexture (GL_TEXTURE0);
   glBindTexture (GL_TEXTURE_2D, fb_tex);
   glTexImage2D (
     GL_TEXTURE_2D,
     0,
     GL_DEPTH_COMPONENT,
     shadow_size,
     shadow_size,
     0,
     GL_DEPTH_COMPONENT,
     GL_UNSIGNED_BYTE,
     NULL
   );

   glTexParameteri (GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   glTexParameteri (GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

   // clamp to edge. clamp to border may reduce artifacts outside light frustum
   glTexParameteri (GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri (GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
   // attach depth texture to framebuffer
   glFramebufferTexture2D (GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, fb_tex, 0);

   // tell framebuffer not to use any colour drawing outputs
   GLenum draw_bufs[] = { GL_NONE };
   glDrawBuffers (1, draw_bufs);

   glBindFramebuffer(GL_FRAMEBUFFER, 0);

   //End tutorial code

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   initDebugLightMap();

}

void Renderer::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

void Renderer::renderWalls() {
   //left.render();
   //right.render();
   back.render();
}

void Renderer::render() {
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   
   //*** Render the hud ***/
   glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glEnable (GL_BLEND);
   glDisable (GL_DEPTH_TEST);

   glUseProgram(ctshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   orthographicCamera.setView(ctshader.h_uViewMatrix);
   orthographicCamera.setProjectionMatrix(ctshader.h_uProjMatrix);
   safe_glUniform3f(ctshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(ctshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

   hud->render();

   glUseProgram(0);
   glDisable (GL_BLEND);
   glEnable(GL_DEPTH_TEST);

   //Clear the depth buffer to make the game draw over the HUD
   glClear(GL_DEPTH_BUFFER_BIT);

   //***** Shadow pass ****/
   glBindFramebuffer (GL_FRAMEBUFFER, fb);
   // set the viewport to the size of the shadow map
   glViewport (0, 0, shadow_size, shadow_size);
   // clear the shadow map to black (or white)
   glClearColor (0.0, 0.0, 0.0, 1.0);
   // no need to clear the colour buffer
   glClear (GL_DEPTH_BUFFER_BIT);

   glUseProgram(lmShader.shadeProg);
   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y, 8.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y, 6.0f));
   light.getLightCam().setView(lmShader.h_uViewMatrix);
   light.getLightCam().setProjectionMatrix(lmShader.h_uProjMatrix, 1, 1.0f, 20.0f);
   // model matrix does nothing for the monkey - make it an identity matrix
   //safe_glUniformMatrix4fv (lmShader.h_uModelMatrix, glm::value_ptr(glm::mat4(0)));

   std::list<Renderable*> currObjs = ngame->getObjectsToDraw();
   for (std::list<Renderable*>::iterator it = currObjs.begin(); it != currObjs.end(); ++it) {
      (*it)->renderLightMap();
   }
   glBindFramebuffer (GL_FRAMEBUFFER, 0);
   glUseProgram(0);
   
   glClear (GL_DEPTH_BUFFER_BIT);
   //*** Render the Game ***/
   glUseProgram(cshader.shadeProg);//cshader.shadeProg);
   glViewport(0, 0, (GLsizei)1280, (GLsizei)720);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();


   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y, 8.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y, 6.0f));
   
   if(toggle) {
      light.getLightCam().setView(cshader.h_uViewMatrix);
      light.getLightCam().setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth/winHeight, 0.1f, 100.0f);
   }
   else {
      camera.setView(cshader.h_uViewMatrix);
      camera.setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth/winHeight, 0.1f, 100.0f);
   }
   safe_glUniform3f(cshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(cshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   //safe_glUniform3f(cshader.h_lightColor, light.color.x, light.color.y, light.color.z);


   setModel();
   renderWalls();
   //std::list<Renderable*> currObjs = ngame->getObjectsToDraw();

   for (std::list<Renderable*>::iterator it = currObjs.begin(); it != currObjs.end(); ++it) {
      (*it)->render();
   }

   //*** Render Win Loss ***/
   glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glEnable (GL_BLEND);
   glDisable (GL_DEPTH_TEST);

   glUseProgram(ctshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   orthographicCamera.setView(ctshader.h_uViewMatrix);
   orthographicCamera.setProjectionMatrix(ctshader.h_uProjMatrix);
   safe_glUniform3f(ctshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(ctshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

   hud->renderWinLoss();

   glUseProgram(0);
   glDisable (GL_BLEND);
   glEnable(GL_DEPTH_TEST);

   //Clear the depth buffer to make the game draw over the HUD
   glClear(GL_DEPTH_BUFFER_BIT);

   glUseProgram(0);
   

   /*glUseProgram(dSS.shadeProg);
   //glEnable(GL_TEXTURE_2D);
   glActiveTexture (GL_TEXTURE0);
   glBindTexture (GL_TEXTURE_2D, fb_tex);

   safe_glEnableVertexAttribArray(dSS.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugPosHandle);
   safe_glVertexAttribPointer(dSS.h_aPosition, 2, GL_FLOAT, GL_FALSE, 0, 0);
   
   safe_glEnableVertexAttribArray(dSS.h_tPos);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugTHandle);
   safe_glVertexAttribPointer(dSS.h_tPos, 2, GL_FLOAT, GL_FALSE, 0, 0);

   glDrawArrays(GL_TRIANGLES, 0, 6);
   glUseProgram(0);*/
}
