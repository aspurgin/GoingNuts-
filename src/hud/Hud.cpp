#include "Hud.hpp"

Hud::Hud(NutGame* nutGame) : Renderable()
{
	this->nutGame = nutGame;
	DepthGuage* depthGuage = new DepthGuage(nutGame);
	components.push_back(depthGuage);
}

Hud::~Hud()
{
}

void Hud::setModel()
{
}

void Hud::render()
{
	int i;
   for (i = 0; i < components.size(); i++) {
      components[i]->render();
   }
}