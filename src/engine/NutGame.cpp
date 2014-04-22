#include "NutGame.hpp"

bool NutGame::drillPressed = false;
bool NutGame::left = false;
bool NutGame::right = false;
bool NutGame::up = false;
bool NutGame::down = false;

void NutGame::init() {
   this->renderer = Renderer(640, 480);
   this->drillPressed = false;
   player = Player(glm::vec3(4, 0, 0), 1.0f, 1.0f);
   for (int count = 0; count < 7; count++) {
      gameGrid[count][0] = 0;
   }
   gameGrid[4][0] = &player;
   playerPosition = glm::vec2(4, 0);
   for (int count = 0; count < 7; count++) {
      for (int count2 = 1; count2 < 100; count2++) {
         gameGrid[count][count2] = new DirtBlock(glm::vec3(count, count2, 0), 1.0f, 1.0f);
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

glm::vec2 NutGame::positionAbovePlayer() {
   return glm::vec2(playerPosition.x, playerPosition.y + 1);
}

NutGame::NutGame() {
   drillPressed = false;
   left = false;
   right = false;
   up = false;
   down = false;
}

bool NutGame::isBlockAtPosition(glm::vec2 pos) {
   Movable* movable;

   if (pos.x >= 0 && pos.y >= 0) {
      if (gameGrid[(int)(pos.x)][(int)(pos.y)] != 0) {
         movable = gameGrid[(int)(pos.x)][(int)(pos.y)];
      }
      else {
         return false;
      }
      return movabel->getMovableType() == BLOCK);
   }
   return false;
}

bool NutGame::isDrillingDown() {
   return down && drillPressed;
}

bool NutGame::isDrillingUp() {
   return up && drillPressed;
}

bool NutGame::isDrillingLeft() {
   return left && drillPressed;
}

bool NutGame::isDrillingRight() {
   return right && drillPressed;
}

void NutGame::handleKeyInput() {
   glm::vec2 pos;
   bool blockExists;
   Block* block;

   if (left) {
      pos = positionLeftOfPlayer();
      if (pos.x != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)]
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = glfwGetTime();
               }
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
   else if (down) {
      pos = positionBellowPlayer();
      blockExists = isBlockAtPosition(pos);
      if (drillPressed == true) {
         if (blockExists) {
            block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)]
            player.drillBlock(block);
            if (block->isDead() && block->deathCounter == -1) {
               block->deathCounter = glfwGetTime();
            }
         }
      }
      else {
         if (!blockExists) {
            player.moveTo(pos);
         }
      }
   }
   else if (up) {
      pos = positionAbovePlayer();
      if (pos.y != 0) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)]
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = glfwGetTime();
               }
            }
         }
      }
   }
   else if (right) {
      pos = positionRightOfPlayer();
      if (pos.x < 6) {
         blockExists = isBlockAtPosition(pos);
         if (drillPressed == true) {
            if (blockExists) {
               block = (Block *)gameGrid[(int)(pos.x)][(int)(pos.y)]
               player.drillBlock(block);
               if (block->isDead() && block->deathCounter == -1) {
                  block->deathCounter = glfwGetTime();
               }
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
}

void NutGame::keyPressed(GLFWwindow *window, int key, int scancode, int action, int mods) {
   
   if (key == GLFW_KEY_A) {
      if (action == GLFW_PRESS) {
         left = true;
      }
      else if (action == GLFW_RELEASE) {
         left = false;
      }
   }
   else if (key == GLFW_KEY_S) {
      if (action == GLFW_PRESS) {
         down = true;
      }
      else if (action == GLFW_RELEASE) {
         down = false;
      }
   }
   else if (key == GLFW_KEY_W) {
      if (action == GLFW_PRESS) {
         up = true;
      }
      else if (action == GLFW_RELEASE) {
         up = false;
      }
   }
   else if (key == GLFW_KEY_D) {
      if (action == GLFW_PRESS) {
         right = true;
      }
      else if (action == GLFW_RELEASE) {
         right = false;
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
   else if (key == GLFW_KEY_ESCAPE) {
	   glfwTerminate();
   }
}

vector<Movable*> getObjectsToDraw() {
   int count = playerPosition.y - 5;
   currentTime = glfwGetTime();
   vector<Movable*> objects;
   
   if (count < 0) {
      count = 0;
   }
   
   delta = currentTime - lastTime;
   
   
   for (int count2 = 0; count2 < 10; count2++) {
      for (int count3 = 0; count3 < 7; count3++) {
         if (gameGrid[count3][count]->getMovableType() == BLOCK && (Block*)gameGrid[count3][count]->isDead()) {
            gameGrid[count3][count]->incrementDeathCounter(delta);
            if (gameGrid[count3][count]->shouldDestroy(currentTime)) {
               delete gameGrid[count3][count];
               gameGrid[count3][count] = 0;
            }
         }
      
         objects.push_back(gameGrid[count3][count++]);
      }
   }
   lastTime = currentTime;
   return objects;
}

int main(void)
{

   GLFWwindow* window;
   int last = 0, current;
   vector<Movable*> toBePassed;
   
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
   NutGame game = NutGame(); 
   glfwSetKeyCallback (window, game.keyPressed);
   game.init();
   game.renderer.block.buildBuffers();
   //Loop until the user closes the window
   while (!glfwWindowShouldClose(window))
   {
      for (
   
      game.handleKeyInput();
      //Render here
      glViewport(0, 0, (GLsizei)800, (GLsizei)600);
      
      game.renderer.render();

      //Swap front and back buffers

      glfwSwapBuffers(window);

      //Poll for and process events
      glfwPollEvents();
   }

   glfwTerminate();
   
   return 0;
}
