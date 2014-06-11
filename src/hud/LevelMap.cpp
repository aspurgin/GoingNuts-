#include "LevelMap.hpp"

LevelMap::LevelMap() {
   levelMapTexture = new LevelMapTexture();
}

void LevelMap::render() {
   levelMapTexture->render();
}
