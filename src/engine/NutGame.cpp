#include "NutGame.hpp"

void NutGame::init() {
   for (int count = 0; count < gameGrid.size(); count++) {
      gameGrid[count][0] = null;
   }
   gameGrid[4][0] = player;
   playerPosition = glm::vec2(4, 0);
   for (int count = 0; count < gameGrid.size(); count++) {
      for (int count2 = 1; count2 < gameGreid[0].size(); count2++) {
         gameGrid[count][count2] = DirtBlock(glm::vec3(count, count2, 0), 1.0f, 1.0f);
      }
   }
}

glm::vec2 NutGame::positionLeftOfPlayer() {
   return glm::vec2(playerPosition.x - 1, playerPosition.y);
}

glm::vec2 NutGame::positionRightOfPlayer() {
   return glm::vec2(playerPosition.x + 1, playerPosition.y);
}

glm::vec2 NutGame::positionBellowPlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y - 1);
}

glm::vec2 NutGame::positionBellowPlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y + 1);
}

NutGame::NutGame() {
   this->renderer = Renderer(640, 480);
   this->drillPressed = false;
   player = Player(glm::vec3(4, 0, 0), 1.0f, 1.0f);
}

bool NutGame::isBlockAtPosition(glm::vec2 pos) {
   if (pos.x >= 0 && pos.y >= 0) {
      return gameGrid[pos.x][pos.y] != null;
   }
   return false;
}

void keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {
   glm::vec2 pos;
   bool blockExists;
   
   if (key == GLFW_KEY_A) {
      pos = positionLeftOfPlayer();
      if (pos.x != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               Player::drillBlock(&gameGrid[pos.x][pos.y]);
            }
         }
         else {
            if (!blockExists) {
               player.moveTo(pos);
            }
            else if (pos.y != 0 && !isBlockAtPosition(glm::vec2(pos.x, pos.y + 1))) {
               player.moveTo(glm::vec2(pos.x, pos.y + 1));
            }
         }
      }
   }
   else if (key == GLFW_KEY_S) {
      pos = positionBellowPlayer();
      blockExists = isBlockAtPosition(pos);
      if (drillPressed == true) {
         if (blockExists) {
            Player::drillBlock(&gameGrid[pos.x][pos.y]);
         }
      }
      else {
         if (!blockExists) {
            player.moveTo(pos);
         }
      }
   }
   else if (key == GLFW_KEY_W) {
      pos = positionAbovePlayer();
      blockExists = isBlockAtPosition(pos);
      if (drillPressed == true) {
         if (blockExists) {
            Player::drillBlock(&gameGrid[pos.x][pos.y]);
         }
      }
   }
   else if (key == GLFW_KEY_D) {
      pos = positionRightOfPlayer();
      if (pos.x < gameGrid.size() - 1);
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               Player::drillBlock(&gameGrid[pos.x][pos.y]);
            }
         }
         else {
            if (!blockExists) {
               player.moveTo(pos);
            }
            else if (pos.y != 0 && !isBlockAtPosition(glm::vec2(pos.x, pos.y + 1))) {
               player.moveTo(glm::vec2(pos.x, pos.y + 1));
            }
         }
   }
   else if (key == GLFW_KEY_J) {
      if (action == GLFW_PRESS) {
         drillPressed = true;
      }
      else if (action == GLFW_RELEASE) {
         drillPressed = false;
      }
   }
}

int main(void)
{

   GLFWwindow* window;

   //Initialize the library
   if (!glfwInit())
      return -1;

   //Create a windowed mode window and its OpenGL context
   window = glfwCreateWindow(640, 480, "Goint Nuts!", NULL, NULL);
   if (!window)
   {
      glfwTerminate();
      return -1;
   }
   
   glfwSetKeyCallback (window, keyPressed);

   //Make the window's context current
   glfwMakeContextCurrent(window);

   GLenum err = glewInit();
   NutGame game = NutGame();
   game.init();
   game.renderer.block.buildBuffers();
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window))
   {
      //Render here
      glViewport(0, 0, (GLsizei)640, (GLsizei)480);
      
      game.renderer.render();

      //Swap front and back buffers

      glfwSwapBuffers(window);

      //Poll for and process events
      glfwPollEvents();
   }

   glfwTerminate();
   
   return 0;
}
