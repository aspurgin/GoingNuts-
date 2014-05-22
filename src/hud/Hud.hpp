#ifndef HUD_HPP
#define HUD_HPP 

#include <vector>
#include <stdio.h>

#include "../engine/NutGame.hpp"
#include "../rendering/Renderable.hpp"
#include "../assets/Assets.hpp"
#include "DepthGuage.hpp"
#include "ScoreGuage.hpp"
#include "Background.hpp"
#include "YouWon.hpp"
#include "YouLost.hpp"
#include "Cylinder.hpp"

class Hud: public Renderable
{
   public:
      Hud(NutGame* nutGame);
      ~Hud();
      void render();
      void setModel();
      void renderWinLoss();

   private:
      NutGame* nutGame;
      YouWon* youWon;
      YouLost* youLost;
      std::vector<Renderable*> components;
};


#endif