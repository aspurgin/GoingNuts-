#include "Renderer.hpp"

Renderer::Renderer() {
//   WARN("WRONG ENTRY POINT");
   camera = Camera();
   pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"), 
                                             textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));
   

   cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
                                            textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

   light = Light();
   squirrel = Mesh("Squirrel.obj");
   block = Mesh("Cube.obj");
   //squirrel = Mesh();
}

Renderer::Renderer(int width, int height, NutGame *game, Hud* hud) {
   camera = Camera();
   //pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"),
     //                                        textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));

   //cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
     //                                       textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));
   cshader = Assets::getCShader();
   ctshader = Assets::getCShaderTexture();
   light = Light();
   winWidth = width;
   winHeight = height;
   ngame = game;
   this->hud = hud;
   //block.debug();
   //exit(1);
   left = Wall(glm::vec3(-1.5, -10, 0));
   right = Wall(glm::vec3(7.5, -10, 0));

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
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();
}

void Renderer::setModel() {
   safe_glUniformMatrix4fv(cshader.h_uModelMatrix, glm::value_ptr(modelTrans.modelViewMatrix));
}

void Renderer::renderWalls() {
   left.render();
   right.render();
}

void Renderer::render() {
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   
   //*** Render the hud ***/
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
   //Clear the depth buffer to make the game draw over the HUD
   glClear(GL_DEPTH_BUFFER_BIT);


   //*** Render the Game ***/
   glUseProgram(cshader.shadeProg);//cshader.shadeProg);
   modelTrans.useModelViewMatrix();
   modelTrans.loadIdentity();


   camera.setEye(glm::vec3(3.0f, ngame->player.getCenter().y + 1, 8.0f));
   light.setPosition(glm::vec3(ngame->player.getCenter().x, ngame->player.getCenter().y + 2, 6.0f));

   camera.setView(cshader.h_uViewMatrix);
   camera.setProjectionMatrix(cshader.h_uProjMatrix, winWidth, winHeight);
   safe_glUniform3f(cshader.h_lightPos, light.position.x, light.position.y, light.position.z);
   safe_glUniform3f(cshader.h_cameraPos, -camera.eye.x, -camera.eye.y, -camera.eye.z);
   //safe_glUniform3f(cshader.h_lightColor, light.color.x, light.color.y, light.color.z);


   setModel();
   renderWalls();
   std::list<Renderable*> currObjs = ngame->getObjectsToDraw();

   for (std::list<Renderable*>::iterator it = currObjs.begin(); it != currObjs.end(); ++it) {
      (*it)->render();
   }

   //printf("num objs: %d", currObjs.size());
   /*for (int i = 0; i < currObjs.size(); i++) {
      Movable *obj = currObjs.at(i);
      //TRACE("centerPos: " << obj->getCenter().x);
      switch (obj->getMovableType()) {
         case BLOCK:
            switch (((Block *)obj)->getBlockType()) {
               case DIRTBLOCK:
                  if(((Block *) obj)->isDead()) {
                     renderCube(obj->getCenter(), 0, ((Block *) obj)->deathCounter);   
                  }
                  else if(((Block *) obj)->willFall() && !((Block*) obj)->shouldFall()){ 
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
                  if(((Block *) obj)->willFall() && !((Block*) obj)->shouldFall()){ 
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
   }*/
   /*cshader.setMaterial(2);
   glm::vec3 pos(0, 0, 0);
   //renderCube(pos, 1, 0);
   pos.x = 5;
   renderSquirrel(pos, 2, 0);*/
   glUseProgram(0);

}
