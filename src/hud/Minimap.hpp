#ifndef Minimap_HPP
#define Minimap_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"
#include "../hud/MinimapBlock.hpp"
#include "../hud/DynamiteImage.hpp"
#include "../hud/HardHatImage.hpp"
#include "../hud/PlayerImage.hpp"
#include "../hud/NutImage.hpp"
#include "../engine/NutGame.hpp"

class Minimap : public Renderable {
   public:
      Minimap(NutGame* nutGame);
      void render();
      ~Minimap();

   private:
   	  std::vector<MinimapBlock*> blocks;
   	  NutGame* nutGame;
};

#endif
