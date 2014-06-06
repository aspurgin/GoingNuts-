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

NutGame game;
bool tog = false;


void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {
   if (!game.player.getIsDead() && !game.isWon) {
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
   if (key == GLFW_KEY_R) {
      game.init();
   }
   else if (key == GLFW_KEY_ESCAPE) {
      glfwTerminate();

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
   window = glfwCreateWindow(1280, 720, "Going Nuts!", NULL, NULL);
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
   //Camera& myCam = Renderer::getCamera();
   game.init();
   Hud hud(&game);

   Renderer::Renderer(1280, 720, &game, &hud);
   //Renderer renderer(1280, 720, &game, &hud);
   
   Assets::playMusic(Assets::GAME_M);
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window)) {
      game.handleKeyInput();
      
      currentTime = glfwGetTime();
      //game.handleKeyInput();
      delta = currentTime - lastTime;
      fpsTime += delta;
      
      //if (!game.player.getIsDead() && !game.isWon) {
         game.checkGrid(delta);
         game.fallDown(delta);
         game.player.takeAwayEnergy(delta);
      //}
      game.updatePSystem(delta);
      if (fpsTime >= 1) {
         curFps = fpsCount;
         fpsCount = 0;
         fpsTime = 0;
      }
      sprintf(scoreString, "FPS: %.0f", 1.0/delta);
      
      if (game.player.getIsDead()) {
         sprintf(scoreString, "FPS: %.0f", 1.0/delta);
         //printf("YOU ARE DEAD\n");
         //break;
      }
      if (game.isWon) {
         sprintf(scoreString, "FPS: %.0f", 1.0/delta);
         //printf("YOU WON!!!!!!!!\n");
         //break;
      }
      
      glfwSetWindowTitle(window, scoreString);

      lastTime = currentTime;
      // Render here
      glViewport(0, 0, (GLsizei)1280, (GLsizei)720);
      Renderer::toggle = tog;
      Renderer::render();
      //renderer.toggle = tog;
      //renderer.render();

      //Swap front and back buffers
    
      glfwSwapBuffers(window);

      //Poll for and process events
      glfwPollEvents();

      glm::vec3 pos = Renderer::camera.getPosition();
      //printf("Cam pos: %f, %f, %f\n", pos.x, pos.y, pos.z);
      fpsCount++;
      //Assets::update();
   }

   glfwTerminate();
   
   return 0;
}
