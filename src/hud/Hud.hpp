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
#include "GoingNuts.hpp"
#include "Sun.hpp"
#include "NutColor.hpp"
#include "NutOutline.hpp"
#include "Energy.hpp"
#include "Points.hpp"
#include "PowerUpIndicatorBackground.hpp"
#include "QuestionMark.hpp"
#include "Level.hpp"
#include "Depth.hpp"
#include "DepthMask.hpp"
#include "ScoreMask.hpp"
#include "Number.hpp"

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