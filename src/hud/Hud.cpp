#include "Hud.hpp"

Hud::Hud(NutGame* nutGame) : Renderable()
{
   this->nutGame = nutGame;
   DepthGuage* depthGuage = new DepthGuage(nutGame);
   ScoreGuage* scoreGuage = new ScoreGuage(nutGame);
   Background* background = new Background();
   youWon = new YouWon();
   youLost = new YouLost();
   hardHatImage = new HardHatImage();
   dynamiteImage = new DynamiteImage();
   questionMark = new QuestionMark();
   superDrillImage = new SuperDrillImage();

   //Cylinder* cylinder = new Cylinder();
   GoingNuts* goingNuts = new GoingNuts();
   Sun* sun = new Sun();
   NutColor* nutColor = new NutColor();
   NutOutline* nutOutline = new NutOutline();
   Energy* energy = new Energy();
   Points* points = new Points();
   PowerUpIndicatorBackground* powerUpBG = new PowerUpIndicatorBackground();
   LevelLabel* level = new LevelLabel();
   Depth* depth = new Depth();
   DepthMask* depthMask = new DepthMask();
   ScoreMask* scoreMask = new ScoreMask();
   //Number* number = new Number();
   Minimap* minimap = new Minimap(nutGame);
   EnergyPercentage* energyPercentage = new EnergyPercentage(nutGame);
   LevelNumber* levelNumber = new LevelNumber(nutGame);
   NewPercent* newPercent = new NewPercent();
   startScreen = new StartScreen();
   
   //components.push_back(background);
   components.push_back(depthGuage);
   components.push_back(depthMask);
   components.push_back(scoreGuage);
   components.push_back(scoreMask);
   components.push_back(depthGuage);
   components.push_back(depthMask);
   //components.push_back(cylinder);
   components.push_back(goingNuts);
   components.push_back(sun);
   components.push_back(nutColor);
   components.push_back(nutOutline);
   components.push_back(energy);
   components.push_back(points);
   //components.push_back(number);
   components.push_back(powerUpBG);
   components.push_back(level);
   components.push_back(depth);
   components.push_back(minimap);
   components.push_back(energyPercentage);
   components.push_back(levelNumber);
   components.push_back(newPercent);
   //components.push_back(superDrillImage);
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
   if (nutGame->isWon)
   {
      youWon->render();
   }
   else if (nutGame->player.getIsDead())
   {
      youLost->render();
   }

   if (!nutGame->player.getHasHardHat() && !(nutGame->player.getNumDynamites() > 0))// && !(nutGame->player.getHasSuperDrill()))
   {
      questionMark->render();
   }
   
   if (nutGame->player.getHasHardHat())
   {
      hardHatImage->render();
   }
   if (nutGame->player.getNumDynamites() > 0)
   {
      dynamiteImage->render();
   }
   
   //if (nutGame->player.getHasSuperDrill())
   /*if (true)
   {
      superDrillImage->render();
   }*/
}

void Hud::renderStartScreen()
{
   startScreen->render();
}