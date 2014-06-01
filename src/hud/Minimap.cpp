#include "Minimap.hpp"

Minimap::Minimap(NutGame* nutGame) {
  this->nutGame = nutGame;
}

void Minimap::render() {
   for (int i = 0; i < nutGame->gameGrid.size(); i++)
   {
   	  std::vector<Movable*> gridLine = nutGame->gameGrid[i];
      for (int j = 0; j < gridLine.size(); j++)
      {
         if (gridLine[j])
         {
         	float x = ((float)j)*0.25f - 12.0f;
         	float y = -1.0*((float)i)*0.25f;
         	MinimapBlock block(glm::vec3(x,y,0.0f));
         	block.render();
         } 
         else
         {

         }
      }
   }
}

Minimap::~Minimap()
{
   for (int i = 0; i < blocks.size(); ++i)
   {
      delete blocks[i];
   }
}
