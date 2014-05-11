#include "NutGame.hpp"
#include "../rendering/Renderer.hpp"
#include "MovableTypes.hpp"
#include <stdlib.h>
#include <string>
#include "Block.hpp"
#include "../hud/Hud.hpp"


#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>
#include "../assets/Assets.hpp"

NutGame game;

void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {

   if (key == GLFW_KEY_A) {
      if (action == GLFW_PRESS) {
         game.left = true;
         
      }
      else if (action == GLFW_RELEASE) {
         game.left = false;
      }
   }
   else if (key == GLFW_KEY_S) {
      if (action == GLFW_PRESS) {
         game.down = true;
      }
      else if (action == GLFW_RELEASE) {
         game.down = false;
      }
   }
   else if (key == GLFW_KEY_W) {
      if (action == GLFW_PRESS) {
         game.up = true;
      }
      else if (action == GLFW_RELEASE) {
         game.up = false;
      }
   }
   else if (key == GLFW_KEY_D) {
      if (action == GLFW_PRESS) {
         game.right = true;
      }
      else if (action == GLFW_RELEASE) {
         game.right = false;
      }
   }
   else if (key == GLFW_KEY_J) {
      if (action == GLFW_PRESS) {
         game.drillPressed = true;
      }
      else if (action == GLFW_RELEASE) {
         game.drillPressed = false;
      }
   }
   else if (key == GLFW_KEY_ESCAPE) {
      glfwTerminate();




      exit(0);
   }
   
   game.handleKeyInput();
}

int main(void)
{
   double currentTime = glfwGetTime();
   double lastTime = currentTime;
   double delta;
   GLFWwindow* window;
   int last = 0, current;
   char scoreString[20];
   std::vector<Movable*> toBePassed;

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
   game.init();
   Hud hud(&game);
   Renderer renderer(640, 480, &game, &hud);
   
   float fpsTime = 0;
   int fpsCount = 0;
   int curFps = 0;

   
   Assets::playMusic(Assets::GAME_M);
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window)) {
      currentTime = glfwGetTime();
      //game.handleKeyInput();
      delta = currentTime - lastTime;
      fpsTime += delta;
      
      game.checkGrid(delta);
      game.fallDown(delta);

      if (fpsTime >= 1) {
         curFps = fpsCount;
         fpsCount = 0;
         fpsTime = 0;
      }
      sprintf(scoreString, "FPS: %.0f Score: %d  %s", 1.0/delta, game.player.getScore(), game.player.getIsDead() ? "You are Dead" : "");
      if (game.player.getIsDead()) {
         break;
      }
      glfwSetWindowTitle(window, scoreString);

      lastTime = currentTime;
      // Render here
      glViewport(0, 0, (GLsizei)1200, (GLsizei)900);
      renderer.render();

      //Swap front and back buffers

      glfwSwapBuffers(window);

      //Poll for and process events
      glfwPollEvents();

      fpsCount++;
      //Assets::update();
   }

   glfwTerminate();

   return 0;
}
