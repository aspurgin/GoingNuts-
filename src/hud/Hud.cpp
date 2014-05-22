#include "Hud.hpp"

Hud::Hud(NutGame* nutGame) : Renderable()
{
	this->nutGame = nutGame;
	DepthGuage* depthGuage = new DepthGuage(nutGame);
	ScoreGuage* scoreGuage = new ScoreGuage(nutGame);
	Background* background = new Background();
	youWon = new YouWon();
	youLost = new YouLost();

	Cylinder* cylinder = new Cylinder();
	
	components.push_back(background);
	components.push_back(depthGuage);
	components.push_back(scoreGuage);
	components.push_back(cylinder);
}

Hud::~Hud()
{
	for (int i = 0; i < components.size(); ++i)
	{
		delete components[i];
	}
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

void Hud::renderWinLoss()
{
   if (nutGame->getNutsLeft() == 0)
   {
      youWon->render();
   }
   else if (nutGame->player.getIsDead())
   {
      youLost->render();
   }
}