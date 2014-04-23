#include "NutGame.hpp"
#include "../rendering/Renderer.hpp"
#include "MovableTypes.hpp"
#include <stdlib.h>
#include <string>
#include "Block.hpp"

#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

NutGame game;

void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {

   if (key == GLFW_KEY_A) {
      if (action == GLFW_PRESS) {
         NutGame::left = true;
         
      }
      else if (action == GLFW_RELEASE) {
         NutGame::left = false;
      }
   }
   else if (key == GLFW_KEY_S) {
      if (action == GLFW_PRESS) {
         NutGame::down = true;
      }
      else if (action == GLFW_RELEASE) {
         NutGame::down = false;
      }
   }
   else if (key == GLFW_KEY_W) {
      if (action == GLFW_PRESS) {
         NutGame::up = true;
      }
      else if (action == GLFW_RELEASE) {
         NutGame::up = false;
      }
   }
   else if (key == GLFW_KEY_D) {
      if (action == GLFW_PRESS) {
         NutGame::right = true;
      }
      else if (action == GLFW_RELEASE) {
         NutGame::right = false;
      }
   }
   else if (key == GLFW_KEY_J) {
      if (action == GLFW_PRESS) {
         NutGame::drillPressed = true;
      }
      else if (action == GLFW_RELEASE) {
         NutGame::drillPressed = false;
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
   window = glfwCreateWindow(800, 600, "Going Nuts!", NULL, NULL);
   if (!window)
   {
      glfwTerminate();
      return -1;
   }

   //Make the window's context current
   glfwMakeContextCurrent(window);

   GLenum err = glewInit();
   glfwSetKeyCallback(window, keyPressed);
   game.init();
   Renderer renderer(640, 480, &game);
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window)) {
      currentTime = glfwGetTime();
      //game.handleKeyInput();
      delta = currentTime - lastTime;

      game.checkGrid(delta);
      game.fallDown(delta);

      sprintf(scoreString, "Score: %d", game.player.getScore());
      glfwSetWindowTitle(window, scoreString);

      lastTime = currentTime;
      // Render here
      glViewport(0, 0, (GLsizei)800, (GLsizei)600);
      renderer.render();

      //Swap front and back buffers

      glfwSwapBuffers(window);

      //Poll for and process events
      glfwPollEvents();
   }

   glfwTerminate();

   return 0;
}