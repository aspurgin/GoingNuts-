#ifndef EnergyPercentage_HPP
#define EnergyPercentage_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"
#include "../hud/Number0.hpp"
#include "../hud/Number1.hpp"
#include "../hud/Number2.hpp"
#include "../hud/Number3.hpp"
#include "../hud/Number4.hpp"
#include "../hud/Number5.hpp"
#include "../hud/Number6.hpp"
#include "../hud/Number7.hpp"
#include "../hud/Number8.hpp"
#include "../hud/Number9.hpp"
#include "../engine/NutGame.hpp"

class EnergyPercentage : public Renderable {
   public:
      EnergyPercentage(NutGame* nutGame);
      void render();
      ~EnergyPercentage();

   private:
   	  std::vector<Number*> numbers;
   	  NutGame* nutGame;
};

#endif
