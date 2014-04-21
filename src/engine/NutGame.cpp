#include "NutGame.hpp"

void NutGame::init() {
   gameGrid[4][0] = Player(glm::vec3(4, 0, 0), 1.0f, 1.0f);
   for (int count = 0; count < 7; count++) {
      for (int count2 = 1; count2 < 100; count2++) {
         gameGrid[count][count2] = DirtBlock(glm::vec3(count, count2, 0), 1.0f, 1.0f);
      }
   }
}

NutGame::NutGame() {
   this->renderer = Renderer(640, 480);
}

int main(void) {
   GLFWwindow* window;


   /* Initialize the library */
   if (!glfwInit())
      return -1;

   /* Create a windowed mode window and its OpenGL context */
   window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
   if (!window)
   {
      glfwTerminate();
      return -1;
   }

   /* Make the window's context current */
   glfwMakeContextCurrent(window);

   GLenum err = glewInit();
   NutGame game;
   game.renderer.block.buildBuffers();
   /* Loop until the user closes the window */
   while (!glfwWindowShouldClose(window))
   {
      /* Render here */
      glViewport(0, 0, (GLsizei)640, (GLsizei)480);
      
      game.renderer.render();

      //printf("working!\n");
      /* Swap front and back buffers */
      glfwSwapBuffers(window);

      /* Poll for and process events */
      glfwPollEvents();
   }

   glfwTerminate();
   return 0;
}
