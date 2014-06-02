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
         	float x = ((float)j)*0.35f - 12.0f;
         	float y = -1.0f*((float)i)*0.35f + 0.5f;
         	RenderType rtype = gridLine[j]->type;
         	
         	if (rtype == DIRT_BLOCK_R || rtype == CRYSTAL_BLOCK_R || rtype == LAVA_BLOCK_R 
         		|| rtype == SAND_BLOCK_R || rtype == STONE_BLOCK_R)
         	{
	         	MinimapBlock block(glm::vec3(x,y,0.0f), rtype, gridLine[j]->typeColor);
	         	block.render();
	        }
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
