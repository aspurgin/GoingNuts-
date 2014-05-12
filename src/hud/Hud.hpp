#ifndef HUD_HPP
#define HUD_HPP 

#include <vector>

#include "../engine/NutGame.hpp"
#include "../rendering/Renderable.hpp"
#include "../assets/Assets.hpp"
#include "DepthGuage.hpp"
#include "Background.hpp"

class Hud: public Renderable
{
   public:
	
       Hud(NutGame* nutGame);
	   ~Hud();
       void render();
       void setModel();

	private:
        NutGame* nutGame;
        std::vector<Renderable*> components;
};


#endif