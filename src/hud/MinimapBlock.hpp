#ifndef MinimapBlock_HPP
#define MinimapBlock_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class MinimapBlock : public Renderable {
   public:
      MinimapBlock(glm::vec3 position, RenderType type, int colorType);
      void render();
};

#endif
