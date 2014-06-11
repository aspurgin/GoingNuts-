#include "NutGame.hpp"

#include "MovableTypes.hpp"
#include <stdlib.h>
#include <string>
#include "Block.hpp"
#include "../hud/Hud.hpp"
#include <stdio.h>


#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>
#include "../assets/Assets.hpp"
#include "../rendering/Renderer.hpp"

#define ONE_UPDATE 0.015

NutGame game;
bool tog = false;
bool paused = false;
bool gameHasNotStarted = true;
int level;
bool quit = false;


void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {
   if (key == GLFW_KEY_G) {
      if (action == GLFW_RELEASE) {
         gameHasNotStarted = false;
      }
   }
   else if (key == GLFW_KEY_Q) {
      if (action == GLFW_RELEASE) {
         quit = true;
      }
   }
   if (key == GLFW_KEY_P) {
      if (action == GLFW_RELEASE) {
         paused = !paused;
         if (paused) {
            Assets::playSound(Assets::PAUSE_S);
            Assets::stopMusic();
         }
         else {
            Assets::playSound(Assets::RESUME_S);
            Assets::playMusic(Assets::GAME_M);
         }
      }
   }
   if (!paused && !game.player.getIsDead() && !game.isWon) {
      
      if (key == GLFW_KEY_E) {
         if (action == GLFW_RELEASE) {
            tog = !tog;
         }   
      }
      else if (key == GLFW_KEY_A) {
         if (action == GLFW_PRESS) {
            game.left = true;
         }
         else if (action == GLFW_RELEASE) {
            game.left = false;
            game.releasedSinceLeftPress = true;
         }
      }
      else if (key == GLFW_KEY_W) {
         if (action == GLFW_PRESS) {
            game.up = true;
         }
         else if (action == GLFW_RELEASE) {
            game.up = false;
            game.releasedSinceUpPress = true;
         }
      }
      else if (key == GLFW_KEY_D) {
         if (action == GLFW_PRESS) {
            game.right = true;
         }
         else if (action == GLFW_RELEASE) {
            game.right = false;
            game.releasedSinceRightPress = true;
         }
      }
      else if (key == GLFW_KEY_S) {
         if (action == GLFW_PRESS) {
            game.down = true;
         }
         else if (action == GLFW_RELEASE) {
            game.down = false;
            game.releasedSinceDownPress = true;
         }
      }
      else if (key == GLFW_KEY_DOWN) {
         if (action == GLFW_PRESS) {
            game.drillDownPressed = true;
         }
         else if (action == GLFW_RELEASE) {
            game.drillDownPressed = false;
            game.releasedSinceDownPress = true;
         }
      }
      else if (key == GLFW_KEY_LEFT) {
         if (action == GLFW_PRESS) {
            game.drillLeftPressed = true;
         }
         else if (action == GLFW_RELEASE) {
            game.drillLeftPressed = false;
            game.releasedSinceLeftPress = true;
         }
      }
      else if (key == GLFW_KEY_UP) {
         if (action == GLFW_PRESS) {
            game.drillUpPressed = true;
         }
         else if (action == GLFW_RELEASE) {
            game.drillUpPressed = false;
            game.releasedSinceUpPress = true;
         }
      }
      else if (key == GLFW_KEY_RIGHT) {
         if (action == GLFW_PRESS) {
            game.drillRightPressed = true;
         }
         else if (action == GLFW_RELEASE) {
            game.drillRightPressed = false;
            game.releasedSinceRightPress = true;
         }
      }
      else if (key == GLFW_KEY_SPACE) {
         if (action == GLFW_PRESS) {
            game.throwDynamitePressed = true;
         }
         else if (action == GLFW_RELEASE) {
            game.throwDynamitePressed = false;
            game.releasedSinceThrowDynamitePressed = true;
         }
      }
      else if (key == GLFW_KEY_T && action == GLFW_PRESS) {
         game.useArrowKeys = !game.useArrowKeys;
      }
   }
   if (!paused) {
      if (key == GLFW_KEY_R) {
         //game.reloadLevel();
         game.init();
      }
   }
   if (key == GLFW_KEY_ESCAPE) {
      glfwTerminate();
      quit = true;

      exit(0);
   }
}

int main(void)
{
   double currentTime = glfwGetTime();
   double lastTime = currentTime;
   double delta;
   GLFWwindow* window;
   int last = 0, current;
   char scoreString[50];
   std::vector<Movable*> toBePassed;
   float fpsTime = 0;
   int fpsCount = 0;
   int curFps = 0;

   //glfwGetWindowSize(&width, &height);

   //Initialize the library
   if (!glfwInit())
      return -1;

   //Create a windowed mode window and its OpenGL context
   GLFWmonitor * mon = glfwGetPrimaryMonitor();
   const GLFWvidmode* mode;
   
   if (mon != NULL) {
      mode = glfwGetVideoMode(mon);
      window = glfwCreateWindow(mode->width/*1280*/, mode->height/*720*/, "Going Nuts!", mon, NULL);
   }
   else {
      GLFWvidmode * tmpmode = (GLFWvidmode *) malloc(sizeof (GLFWvidmode));
      tmpmode->width = 1280;
      tmpmode->height = 720;
      mode = tmpmode;
      window = glfwCreateWindow(mode->width/*1280*/, mode->height/*720*/, "Going Nuts!", NULL, NULL);
   }

   
   if (!window)
   {
      glfwTerminate();
      return -1;
   }

   //Make the window's context current
   glfwMakeContextCurrent(window);

   GLenum err = glewInit();
   glfwSetKeyCallback(window, keyPressed);
   Assets::loadAssets();
   //while (!glfwWindowShouldClose(window)) {
      //Camera& myCam = Renderer::getCamera();
      Hud hud(&game);
      Renderer::Renderer(mode->width/*1280*/, mode->height/*720*/, &game, &hud);
      //Renderer renderer(1280, 720, &game, &hud);

      Assets::playMusic(Assets::TITLE_M);
      while (gameHasNotStarted) {
         glViewport(0, 0, (GLsizei)mode->width/*1280*/, (GLsizei)mode->height/*720*/);
         Renderer::renderStartScreen();
         glfwSwapBuffers(window);
         glfwPollEvents();
      }
      Assets::stopMusic();
      game.init();
      level = game.getLevel();

      Assets::playMusic(Assets::GAME_M);
      //Loop until the user closes the window
      lastTime = glfwGetTime();
      while (!glfwWindowShouldClose(window) && !quit) {
         if (game.getLevel() != level) {
            int x = 0;
            paused = true;
            while (x < 1000) {
               glViewport(0, 0, (GLsizei)mode->width/*1280*/, (GLsizei)mode->height/*720*/);
               Renderer::renderLevelMap();
               glfwSwapBuffers(window);
               glfwPollEvents();
               x++;
            }
            paused = false;
            level = game.getLevel();
            lastTime = glfwGetTime();
         }
         
         game.handleKeyInput();

         currentTime = glfwGetTime();
         //game.handleKeyInput();
         delta = currentTime - lastTime;
         fpsTime += delta;
         if (delta > 0.26) {
            delta = 0.26;
         }

         if (!paused) {
            for (float total = 0; total < delta; total += ONE_UPDATE) {
               game.checkGrid(ONE_UPDATE);
               game.fallDown(ONE_UPDATE);
               game.player.takeAwayEnergy(ONE_UPDATE);
               game.updatePSystem(ONE_UPDATE);
            }
         }

         if (fpsTime >= 1) {
            curFps = fpsCount;
            fpsCount = 0;
            fpsTime = 0;
         }
         sprintf(scoreString, "FPS: %.0f", 1.0 / delta);

         if (game.player.getIsDead()) {
            sprintf(scoreString, "FPS: %.0f", 1.0 / delta);
            //printf("YOU ARE DEAD\n");
            //break;
         }
         if (game.isWon) {
            sprintf(scoreString, "FPS: %.0f", 1.0 / delta);
            //printf("YOU WON!!!!!!!!\n");
            //break;
         }

         glfwSetWindowTitle(window, scoreString);


         lastTime = currentTime;
         // Render here
         glViewport(0, 0, (GLsizei)mode->width/*1280*/, (GLsizei)mode->height/*720*/);
         Renderer::toggle = tog;
         if (!paused) {
            Renderer::render();

            //renderer.toggle = tog;
            //renderer.render();

            //Swap front and back buffers

            glfwSwapBuffers(window);
         }
         //Poll for and process events
         glfwPollEvents();

         //glm::vec3 pos = Renderer::camera.getPosition();
         //printf("Cam pos: %f, %f, %f\n", pos.x, pos.y, pos.z);
         fpsCount++;
         //Assets::update();
      }
      //delete &game;
      //Assets::stopMusic();
   //}
   glfwTerminate();
   
   return 0;
}
