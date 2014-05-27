#include "Renderer.hpp"

namespace Renderer {

   Camera camera;
   bool toggle, antiAlias;
   OrthographicCamera orthographicCamera;
   Light light;
   PhongShader pshader;
   PhongTextureShader ptshader;
   CellShader cshader;
   CellShaderTexture cetshader;
   FlatTextureShader ftshader;
   LightMapShader lmShader;
   BloomShader bshader;
   RenderingHelper modelTrans;
   int winWidth, winHeight;
   NutGame *ngame;

   namespace {
      Hud* hud;
      Wall left;
      Wall right;
      Wall back;
      Cylinder* cylinder;
      GLuint lmDebugPosHandle, lmDebugTHandle;
      DebugShadowShader dSS;
      GLuint fb_tex;
      GLuint fb;
      GLuint fbBloom_tex1;
      GLuint fbBloom1;
      int shadow_size;
      std::list<Renderable *> currObjs;
   
      //void renderHud();
      //void renderLightShadowMap();
      //void renderGame();
      //void renderWinLoss();
      //void renderDebugShadowMapText();
      //void renderNormalMappedCylinder();
      //void checkGLError();

      void initDebugLightMap() {
         //position of the square
         float ss_quad_pos[] = {
            0.5, 0.5,
            1.0, 0.5,
            1.0, 1.0,
            1.0, 1.0,
            0.5, 1.0,
            0.5, 0.5
         };
         
         //text coords of square
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


      void renderWalls() {
         //left.render();
         //right.render();
         back.render();
      }


      void renderHud() {
         //*** Render the hud ***/
         glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
         glEnable(GL_BLEND);
         glDisable(GL_DEPTH_TEST);

         glUseProgram(ftshader.shadeProg);
         modelTrans.useModelViewMatrix();
         modelTrans.loadIdentity();

         orthographicCamera.setView(ftshader.h_uViewMatrix);
         orthographicCamera.setProjectionMatrix(ftshader.h_uProjMatrix);
         safe_glUniform3f(ftshader.h_lightPos, light.position.x, light.position.y, light.position.z);
         safe_glUniform3f(ftshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

         camera.setPosition(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
         light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

         hud->render();

         glUseProgram(0);
         glDisable(GL_BLEND);
         glEnable(GL_DEPTH_TEST);

         //Clear the depth buffer to make the game draw over the HUD
         glClear(GL_DEPTH_BUFFER_BIT);
      }

      void renderLightShadowMap() {
         //***** Shadow pass ****/
         //Use the frame buffer for the light
         glBindFramebuffer(GL_FRAMEBUFFER, fb);
         // set the viewport to the size of the shadow map
         glViewport(0, 0, shadow_size, shadow_size);
         // clear the shadow map to black (or white)
         glClearColor(0.0, 0.0, 0.0, 1.0);
         // no need to clear the colour buffer
         glClear(GL_DEPTH_BUFFER_BIT);

         //Initialize my shader for the light shadow map
         glUseProgram(lmShader.shadeProg);
         //float eyeOffsetX = ngame->player.getCenter().x + (ngame->player.getCenter().x - 3)*2/5.0;
         //camera.setPosition(glm::vec3(3.0, ngame->player.getCenter().y, 8.0f));
         //light.setPosition(glm::vec3(3.0, ngame->player.getCenter().y, 8.0f));

         //for the view and projection, use the virtual camera at the light's position
         light.getLightCam().setView(lmShader.h_uViewMatrix);
         light.getLightCam().setProjectionMatrix(lmShader.h_uProjMatrix, 1, 1.0f, 25.0f);
         // model matrix does nothing for the monkey - make it an identity matrix
         //safe_glUniformMatrix4fv (lmShader.h_uModelMatrix, glm::value_ptr(glm::mat4(0)));

         //std::list<Renderable*> currObjs = ngame->getObjectsToDraw();
         //Render the light shadow map for all casting objects
         for (std::list<Renderable*>::iterator it = currObjs.begin(); it != currObjs.end(); ++it) {
            (*it)->renderLightMap();
         }

         //ngame->psystem.renderLightMap();
         glBindFramebuffer(GL_FRAMEBUFFER, 0);
         glUseProgram(0);

         glClear(GL_DEPTH_BUFFER_BIT);
      }

      
      void renderBlocks() {
         std::list<Renderable*> blocks = ngame->getBlocksToDraw();

         for (std::list<Renderable*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
            (*it)->render();
         }

      }

      void renderPlayer() {
         ngame->player.render();
      }

      void renderNuts() {
         std::list<Renderable*> nuts = ngame->getNutsToDraw();
         for (std::list<Renderable*>::iterator iter = nuts.begin(); iter != nuts.end(); ++iter) {
            (*iter)->render();
         }
      }

      void renderDynamite() {
         std::list<Renderable *> dynamite = ngame->getDynamitesToDraw();

         for (std::list<Renderable*>::iterator it = dynamite.begin(); it != dynamite.end(); ++it) {
            (*it)->render();
         }
      }

      void renderHardHat() {
         std::list<Renderable *> hhats = ngame->getHardHatsToDraw();

         for (std::list<Renderable*>::iterator it = hhats.begin(); it != hhats.end(); ++it) {
            (*it)->render();
         }   
      }

      void renderSuperDrill() {

      }
      

      void renderGame() {

         //*** Render the Game ***/
         glUseProgram(cshader.shadeProg);
         glViewport(0, 0, (GLsizei)1280, (GLsizei)720);
         modelTrans.useModelViewMatrix();
         modelTrans.loadIdentity();

         /***************************BEGIN TEST CODE**********************************
         */glClearColor(0.2,0.2,0.2,1);/*
         static float test = 0;
         static float step = 0.02;

         test += step;
         if (test<-3 || test>9) {
            step *= -1;
            test += 2*step;
         }

         camera.setEye(glm::vec3(test, ngame->player.getCenter().y - 2*test, 8.0f));
         camera.setLookAt(glm::vec3(test, ngame->player.getCenter().y - 6, 0.0f));

         /***************************END TEST CODE**********************************/

         /*float eyeOffsetX = 3.0;
         if(ngame->player.movingHorizontal() == LEFT) {
            eyeOffsetX = 0;
         }
         else if(ngame->player.movingHorizontal() == RIGHT) {
            eyeOffsetX = 7;
         }*/
         
         if(ngame->throwDynamitePressed) {
            camera.shake(0.2);
         }
         light.getLightCam().setLookAt(glm::vec3(3.0, ngame->player.getCenter().y, 0));

         if (toggle) {
            light.getLightCam().setView(cshader.h_uViewMatrix);
            light.getLightCam().setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);
         }
         else {
            camera.setView(cshader.h_uViewMatrix);
            camera.setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);
         }

         light.getLightCam().setView(cshader.h_uCasterView);
         light.getLightCam().setProjectionMatrix(cshader.h_uCasterProj, 1, 1.0, 100);
         glActiveTexture(GL_TEXTURE0);
         glBindTexture(GL_TEXTURE_2D, fb_tex);

         // Set our "colorTextureSampler" sampler to user Texture Unit 0
         glUniform1i(cshader.h_uDepthMapSampler, 0);

         safe_glUniform3f(cshader.h_lightPos, light.position.x, light.position.y, light.position.z);
         safe_glUniform3f(cshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
         //safe_glUniform3f(cshader.h_lightColor, light.color.x, light.color.y, light.color.z);


         //setModel();
         renderWalls();

         ngame->psystem.render();
         
         renderPlayer();
         renderBlocks();
         renderDynamite();
         renderHardHat();
         renderSuperDrill();
         renderNuts();
         
         glUseProgram(0);
      }


      void renderWinLoss() {
         //*** Render Win Loss ***/
         glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
         glEnable(GL_BLEND);
         glDisable(GL_DEPTH_TEST);

         glUseProgram(ftshader.shadeProg);
         modelTrans.useModelViewMatrix();
         modelTrans.loadIdentity();

         orthographicCamera.setView(ftshader.h_uViewMatrix);
         orthographicCamera.setProjectionMatrix(ftshader.h_uProjMatrix);
         safe_glUniform3f(ftshader.h_lightPos, light.position.x, light.position.y, light.position.z);
         safe_glUniform3f(ftshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

         camera.setPosition(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
         light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

         hud->renderWinLoss();

         glUseProgram(0);
         glDisable(GL_BLEND);
         glEnable(GL_DEPTH_TEST);

         //Clear the depth buffer to make the game draw over the HUD
         glClear(GL_DEPTH_BUFFER_BIT);

         glUseProgram(0);
      }

      void renderNormalMappedCylinder()
      {
         /************************************ Render the Normal mapped Cylinder ************************************/
         glUseProgram(ptshader.shadeProg);//ptshader.shadeProg);
         modelTrans.useModelViewMatrix();
         modelTrans.loadIdentity();


         camera.setPosition(glm::vec3(3.0f, ngame->player.getCenter().y, 8.0f));
         light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y + 2, 6.0f));

         camera.setView(ptshader.h_uViewMatrix);
         camera.setProjectionMatrix(ptshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);

         safe_glUniform3f(ptshader.h_lightPos, light.position.x, light.position.y, light.position.z);
         safe_glUniform3f(ptshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
         safe_glUniform3f(ptshader.h_lightColor, light.color.x, light.color.y, light.color.z);

         cylinder->render();
      }

      void renderDebugShadowMapText() {
         //render our debug light shadow map
         glUseProgram(dSS.shadeProg);
         //glEnable(GL_TEXTURE_2D);
         glActiveTexture(GL_TEXTURE0);
         //bind the texture of the light shadow map
         glBindTexture(GL_TEXTURE_2D, fb_tex);

         //get position of the debug square
         safe_glEnableVertexAttribArray(dSS.h_aPosition);
         glBindBuffer(GL_ARRAY_BUFFER, lmDebugPosHandle);
         safe_glVertexAttribPointer(dSS.h_aPosition, 2, GL_FLOAT, GL_FALSE, 0, 0);

         //get text coords of debug square
         safe_glEnableVertexAttribArray(dSS.h_tPos);
         glBindBuffer(GL_ARRAY_BUFFER, lmDebugTHandle);
         safe_glVertexAttribPointer(dSS.h_tPos, 2, GL_FLOAT, GL_FALSE, 0, 0);

         glDrawArrays(GL_TRIANGLES, 0, 6);
         glUseProgram(0);

      }

      void checkGLError() {
         if (GL_NO_ERROR != glGetError()) {
            printf("GL Failed\n");
         }
         else {
            printf("GL Success\n");
         }
      }

   }


   void Renderer(int width, int height, NutGame *game, Hud* theHud) {
      camera = Camera(glm::vec3(3.0f, 1.0f, 10.0f), glm::vec3(3.0f, 0.0f, 5.0f), glm::vec3(0, 1, 0));
      ptshader = Assets::getPhongTextureShader();

      //cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
        //                                       textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

      dSS = ShaderUtils::installDebugShadowShader(textFileRead((char *) "assets/shaders/DebugShadow_Vert.glsl"), 
                                                  textFileRead((char *) "assets/shaders/DebugShadow_Frag.glsl"));
      cshader = Assets::getCShader();
      cetshader = Assets::getCShaderTexture();
      pshader = Assets::getPShader();
      ftshader = Assets::getFlatTextureShader();
      lmShader = Assets::getLightMapShader();
      bshader = Assets::getBShader();
      light = Light();
      winWidth = width;
      winHeight = height;
      ngame = game;
      hud = theHud;
      //block.debug();
      //exit(1);
      //left = Wall(glm::vec3(-1.5, -10, 0));
      //right = Wall(glm::vec3(7.5, -10, 0));
      back = Wall(glm::vec3(3.0, 0.0, -3.0));
      back.setScale(glm::vec3(4.0, 1.0, 0.1));
      toggle = false;
      initialize();
      //hello
   }

   void initialize() {
      //block.buildBuffers();
      //squirrel.buildBuffers();
      // Start Of User Initialization
      glClearColor(0.09f, 0.0f, 0.21f, 1.0f);
      // Black Background
      glClearDepth(1.0f);  // Depth Buffer Setup
      glDepthFunc(GL_LEQUAL); // The Type Of Depth Testing
      glEnable(GL_DEPTH_TEST);// Enable Depth Testing
      glEnable(GL_CULL_FACE);
      glCullFace(GL_BACK);
      glEnable(GL_TEXTURE_2D);
      
      //Note: found from tutorial: http://antongerdelan.net/opengl/texture_shadows.html
         // dimensions of depth map
      shadow_size = 512;

      // create framebuffer
      fb = 0;
      glGenFramebuffers (1, &fb);
      glBindFramebuffer (GL_FRAMEBUFFER, fb);

      // create texture for framebuffer
      fb_tex = 0;
      glGenTextures (1, &fb_tex);
      glActiveTexture (GL_TEXTURE0);
      glBindTexture (GL_TEXTURE_2D, fb_tex);

      //Make a texture that is 256 by 256 that has depth information
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

      // blend the texture so that all areas are filled with a depth
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

      //Go back to using the original frame buffer
      glBindFramebuffer(GL_FRAMEBUFFER, 0);
      //End tutorial code

      // START OF FBO FOR BLOOM
      fbBloom1 = 0;
      fbBloom_tex1 = 0;
      // generate the frame buffer
      glGenFramebuffers(1, &fbBloom1);
      // generate the texture
      glGenTextures(1, &fbBloom_tex1);
      // Bind our frame buffer
      glBindFramebuffer(GL_FRAMEBUFFER, fbBloom1);
      
      //create the colorbuffer texture and attach it to the frame buffer
      glEnable(GL_TEXTURE_2D);
      glActiveTexture(GL_TEXTURE2);
      glBindTexture(GL_TEXTURE_2D, fbBloom_tex1);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, 1280, 720, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
      glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, fbBloom_tex1, 0);
      glDisable(GL_TEXTURE_2D);


      GLenum drawBuffers[1] = { GL_COLOR_ATTACHMENT0 };
      glDrawBuffers(1, drawBuffers);

      checkGLError();
      //Go back to using the original frame buffer
      glBindFramebuffer(GL_FRAMEBUFFER, 0);
      // END OF FBO FOR BLOOM

      modelTrans.useModelViewMatrix();
      modelTrans.loadIdentity();
      initDebugLightMap();

      cylinder = new Cylinder();

      printf("this is fbBloom1 %d\n", fbBloom1);
      printf("this is fbBloom_tex1 %d\n", fbBloom_tex1);
   }

   void setModel() {
      safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
   }

   void render() {
      currObjs = ngame->getObjectsToDraw();
      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

      
      renderHud();
      
      float eyeOffsetX = 3.0 + (ngame->player.getCenter().x - 3)/1.4;
      float eyeOffsetZ = 10.0 + (ngame->player.getCenter().x - 3)*(ngame->player.getCenter().x - 3)/10.0;
      camera.setEye(glm::vec3(eyeOffsetX, ngame->player.getCenter().y, eyeOffsetZ));
      light.setPosition(glm::vec3(3.0, ngame->player.getCenter().y, 8.0f));


      renderLightShadowMap();
      renderGame();
      renderWinLoss();
      //renderDebugShadowMapText();
      //renderNormalMappedCylinder();

   }
}

/*void Renderer::initDebugLightMap() {
   //position of the square
   float ss_quad_pos[] = {
      0.5, 0.5,
      1.0, 0.5,
      1.0, 1.0,
      1.0, 1.0,
      0.5, 1.0,
      0.5, 0.5
   };
   
   //text coords of square
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
   ptshader = Assets::getPhongTextureShader();

   //cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
     //                                       textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

   dSS = ShaderUtils::installDebugShadowShader(textFileRead((char *) "assets/shaders/DebugShadow_Vert.glsl"), 
                                               textFileRead((char *) "assets/shaders/DebugShadow_Frag.glsl"));
   cshader = Assets::getCShader();
   cetshader = Assets::getCShaderTexture();
   pshader = Assets::getPShader();
   ftshader = Assets::getFlatTextureShader();
   lmShader = Assets::getLightMapShader();
   bshader = Assets::getBShader();
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
   //hello
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
   shadow_size = 512;

   // create framebuffer
   fb = 0;
   glGenFramebuffers (1, &fb);
   glBindFramebuffer (GL_FRAMEBUFFER, fb);

   // create texture for framebuffer
   fb_tex = 0;
   glGenTextures (1, &fb_tex);
   glActiveTexture (GL_TEXTURE0);
   glBindTexture (GL_TEXTURE_2D, fb_tex);

   //Make a texture that is 256 by 256 that has depth information
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

   // blend the texture so that all areas are filled with a depth
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

   //Go back to using the original frame buffer
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   //End tutorial code

   // START OF FBO FOR BLOOM
   fbBloom1 = 0;
   fbBloom_tex1 = 0;
   // generate the frame buffer
   glGenFramebuffers(1, &fbBloom1);
   // generate the texture
   glGenTextures(1, &fbBloom_tex1);
   // Bind our frame buffer
   glBindFramebuffer(GL_FRAMEBUFFER, fbBloom1);
   
   //create the colorbuffer texture and attach it to the frame buffer
   glEnable(GL_TEXTURE_2D);
   glActiveTexture(GL_TEXTURE2);
   glBindTexture(GL_TEXTURE_2D, fbBloom_tex1);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, 1280, 720, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
   glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, fbBloom_tex1, 0);
   glDisable(GL_TEXTURE_2D);


   GLenum drawBuffers[1] = { GL_COLOR_ATTACHMENT0 };
   glDrawBuffers(1, drawBuffers);

   checkGLError();
   //Go back to using the original frame buffer
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   // END OF FBO FOR BLOOM

   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
   initDebugLightMap();

   cylinder = new Cylinder();

   printf("this is fbBloom1 %d\n", fbBloom1);
   printf("this is fbBloom_tex1 %d\n", fbBloom_tex1);
}

void Renderer::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

void Renderer::renderWalls() {
   //left.render();
   //right.render();
   back.render();
}

void Renderer::renderHud() {
   //*** Render the hud ***
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glEnable(GL_BLEND);
   glDisable(GL_DEPTH_TEST);

   glUseProgram(ftshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   orthographicCamera.setView(ftshader.h_uViewMatrix);
   orthographicCamera.setProjectionMatrix(ftshader.h_uProjMatrix);
   safe_glUniform3f(ftshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(ftshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

   hud->render();

   glUseProgram(0);
   glDisable(GL_BLEND);
   glEnable(GL_DEPTH_TEST);

   //Clear the depth buffer to make the game draw over the HUD
   glClear(GL_DEPTH_BUFFER_BIT);
}

void Renderer::renderLightShadowMap() {
   //***** Shadow pass ****
   //Use the frame buffer for the light
   glBindFramebuffer(GL_FRAMEBUFFER, fb);
   // set the viewport to the size of the shadow map
   glViewport(0, 0, shadow_size, shadow_size);
   // clear the shadow map to black (or white)
   glClearColor(0.0, 0.0, 0.0, 1.0);
   // no need to clear the colour buffer
   glClear(GL_DEPTH_BUFFER_BIT);

   //Initialize my shader for the light shadow map
   glUseProgram(lmShader.shadeProg);
   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y, 8.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y, 6.0f));

   //for the view and projection, use the virtual camera at the light's position
   light.getLightCam().setView(lmShader.h_uViewMatrix);
   light.getLightCam().setProjectionMatrix(lmShader.h_uProjMatrix, 1, 1.0f, 20.0f);
   // model matrix does nothing for the monkey - make it an identity matrix
   //safe_glUniformMatrix4fv (lmShader.h_uModelMatrix, glm::value_ptr(glm::mat4(0)));

   //std::list<Renderable*> currObjs = ngame->getObjectsToDraw();
   //Render the light shadow map for all casting objects
   for (std::list<Renderable*>::iterator it = currObjs.begin(); it != currObjs.end(); ++it) {
      (*it)->renderLightMap();
   }

   //ngame->psystem.renderLightMap();
   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   glUseProgram(0);

   glClear(GL_DEPTH_BUFFER_BIT);
}

void Renderer::renderGame() {

   //*** Render the Game ***
   glUseProgram(cshader.shadeProg);
   glViewport(0, 0, (GLsizei)1280, (GLsizei)720);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();


   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 8.0f));//DELETE THIS
   //camera.setLookAt(glm::vec3(3, ngame->player.getCenter().y, 0));//DELETE THIS
   //camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y, 18.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y, 6.0f));
   light.getLightCam().setLookAt(glm::vec3(3.0, ngame->player.getCenter().y, 0));

   if (toggle) {
      light.getLightCam().setView(cshader.h_uViewMatrix);
      light.getLightCam().setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);
   }
   else {
      camera.setView(cshader.h_uViewMatrix);
      camera.setProjectionMatrix(cshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);
   }

   light.getLightCam().setView(cshader.h_uCasterView);
   light.getLightCam().setProjectionMatrix(cshader.h_uCasterProj, 1, 1.0, 100);
   glActiveTexture(GL_TEXTURE0);
   glBindTexture(GL_TEXTURE_2D, fb_tex);

   // Set our "colorTextureSampler" sampler to user Texture Unit 0
   glUniform1i(cshader.h_uDepthMapSampler, 0);

   safe_glUniform3f(cshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(cshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   //safe_glUniform3f(cshader.h_lightColor, light.color.x, light.color.y, light.color.z);


   //setModel();
   renderWalls();

   ngame->psystem.render();
   
   std::list<Renderable*> blocks = ngame->getBlocksToDraw();
   for (std::list<Renderable*>::iterator it = blocks.begin(); it != blocks.end(); ++it) {
      (*it)->render();
   }
   ngame->player.render();


   std::list<Renderable*> nuts = ngame->getNutsToDraw();
   for (std::list<Renderable*>::iterator iter = nuts.begin(); iter != nuts.end(); ++iter) {
      (*iter)->render();
   }
}

void Renderer::renderWinLoss() {
   //*** Render Win Loss ***
   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glEnable(GL_BLEND);
   glDisable(GL_DEPTH_TEST);

   glUseProgram(ftshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();

   orthographicCamera.setView(ftshader.h_uViewMatrix);
   orthographicCamera.setProjectionMatrix(ftshader.h_uProjMatrix);
   safe_glUniform3f(ftshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(ftshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);

   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 6.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y - 1, 6.0f));

   hud->renderWinLoss();

   glUseProgram(0);
   glDisable(GL_BLEND);
   glEnable(GL_DEPTH_TEST);

   //Clear the depth buffer to make the game draw over the HUD
   glClear(GL_DEPTH_BUFFER_BIT);

   glUseProgram(0);
}

void Renderer::renderNormalMappedCylinder()
{
   /************************************ Render the Normal mapped Cylinder ************************************
   glUseProgram(ptshader.shadeProg);//ptshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();


   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y, 8.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y + 2, 6.0f));

   camera.setView(ptshader.h_uViewMatrix);
   camera.setProjectionMatrix(ptshader.h_uProjMatrix, (float)winWidth / winHeight, 0.1f, 100.0f);

   safe_glUniform3f(ptshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(ptshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   safe_glUniform3f(ptshader.h_lightColor, light.color.x, light.color.y, light.color.z);

   cylinder->render();
}

void Renderer::renderDebugShadowMapText() {
   //render our debug light shadow map
   glUseProgram(dSS.shadeProg);
   //glEnable(GL_TEXTURE_2D);
   glActiveTexture(GL_TEXTURE0);
   //bind the texture of the light shadow map
   glBindTexture(GL_TEXTURE_2D, fb_tex);

   //get position of the debug square
   safe_glEnableVertexAttribArray(dSS.h_aPosition);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugPosHandle);
   safe_glVertexAttribPointer(dSS.h_aPosition, 2, GL_FLOAT, GL_FALSE, 0, 0);

   //get text coords of debug square
   safe_glEnableVertexAttribArray(dSS.h_tPos);
   glBindBuffer(GL_ARRAY_BUFFER, lmDebugTHandle);
   safe_glVertexAttribPointer(dSS.h_tPos, 2, GL_FLOAT, GL_FALSE, 0, 0);

   glDrawArrays(GL_TRIANGLES, 0, 6);
   glUseProgram(0);

}

void Renderer::render() {
   currObjs = ngame->getObjectsToDraw();
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

   renderHud();
   renderLightShadowMap();
   renderGame();
   renderWinLoss();
   //renderDebugShadowMapText();
   //renderNormalMappedCylinder();

}

void Renderer::checkGLError() {
   if (GL_NO_ERROR != glGetError()) {
      printf("GL Failed\n");
   }
   else {
      printf("GL Success\n");
   }
}*/
