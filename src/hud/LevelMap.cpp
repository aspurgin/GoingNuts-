#include "LevelMap.hpp"

LevelMap::LevelMap(NutGame* nutGame) {
   levelMapTexture = new LevelMapTexture();
   this->nutGame = nutGame;
   lastLevel = 1;
   playerImage = new PlayerImage();
   levelPositions[0] = glm::vec3(0.0,8.0,0.0);
   levelPositions[1] = glm::vec3(0.0,6.3,0.0);
   levelPositions[2] = glm::vec3(0.0,4.5,0.0);
   levelPositions[3] = glm::vec3(0.0,2.7,0.0);
   levelPositions[4] = glm::vec3(0.0,0.8,0.0);
   levelPositions[5] = glm::vec3(0.0,-0.9,0.0);
   levelPositions[6] = glm::vec3(0.0,-2.8,0.0);
   levelPositions[7] = glm::vec3(0.0,-4.4,0.0);
   levelPositions[8] = glm::vec3(0.0,-8.9,0.0);
}

void LevelMap::render() {
   levelMapTexture->render();
   int currLevel = nutGame->getLevel();

   if (currLevel != lastLevel)
   {
   	  count = 0;
   	  lastLevel = currLevel;
   }

   float percent = ((float)count)/100.0f;
   printf("%f\n", percent);

   glm::vec3 newPos = percent*levelPositions[currLevel] + (1.0f-percent)*levelPositions[currLevel-1];
   printf("%f, %f, %f\n", newPos.x, newPos.y, newPos.z);

   playerImage->setPosition(newPos);
   playerImage->render();

   if (count < 100)
   {
      count++;
   }
}
