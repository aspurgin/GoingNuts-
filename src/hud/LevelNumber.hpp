#ifndef LevelNumber_HPP
#define LevelNumber_HPP

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

class LevelNumber : public Renderable {
   public:
      LevelNumber(NutGame* nutGame);
      void render();
      ~LevelNumber();

   private:
   	  std::vector<Number*> numbers;
   	  NutGame* nutGame;
};

#endif
