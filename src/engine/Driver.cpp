#include "NutGame.hpp"
#include "../rendering/Renderer.hpp"
#include "MovableTypes.hpp"
#include "Block.hpp"

#include <GL/glew.h>
#ifdef _WIN32
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

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
   }
}

int main(void)
{
   double currentTime = glfwGetTime();
   double lastTime = currentTime;
   double delta;
   GLFWwindow* window;
   int last = 0, current;
   std::vector<Movable*> toBePassed;

   //glfwGetWindowSize(&width, &height);

   //Initialize the library
   if (!glfwInit())
      return -1;

   //Create a windowed mode window and its OpenGL context
   window = glfwCreateWindow(800, 600, "Goint Nuts!", NULL, NULL);
   if (!window)
   {
      glfwTerminate();
      return -1;
   }

   //Make the window's context current
   glfwMakeContextCurrent(window);

   GLenum err = glewInit();
   NutGame game;
   glfwSetKeyCallback(window, keyPressed);
   game.init();
   Renderer renderer(640, 480, game);
   renderer.block.buildBuffers();
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window)) {
      currentTime = glfwGetTime();

      delta = currentTime - lastTime;

      for (int row = 0; row < NUMROWS; row++) {
         for (int col = 0; col < NUMCOLS; col++) {
            Movable * curObj = game.gameGrid[row][col];
            //printf("pointer1: %d\n", game.gameGrid[row][col]);
            if (curObj != NULL) {
               //printf("pointer: %d\n", curObj);
               if (curObj->getMovableType() == BLOCK && ((Block*)curObj)->isDead()) {

                  ((Block*)curObj)->incrementDeathCounter(delta);

                  if (((Block*)curObj)->shouldDestroy()) {
                     delete curObj;
                     curObj = 0;
                  }
               }
            }
         }
      }

      game.handleKeyInput();
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