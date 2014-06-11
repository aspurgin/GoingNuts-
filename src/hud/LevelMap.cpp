#include "LevelMap.hpp"

LevelMap::LevelMap(NutGame* nutGame) {
   levelMapTexture = new LevelMapTexture();
   this->nutGame = nutGame;
   lastLevel = 1;
   playerImage = new PlayerImage();
   levelPositions[0] = glm::vec3(0.0,8.0,0.0);
}

void LevelMap::render() {
   levelMapTexture->render();
   int currLevel = nutGame->getLevel();

   playerImage->setPosition(levelPositions[0]);
   playerImage->render();
}
