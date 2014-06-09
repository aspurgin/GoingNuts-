#ifndef SideWall_HPP
#define SideWall_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class SideWall : public Renderable {
   public:
      SideWall(float angleToRot);
      void render();
};

#endif
