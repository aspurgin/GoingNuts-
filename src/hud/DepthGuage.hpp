#ifndef DEPTH_GUAGE_HPP
#define DEPTH_GUAGE_HPP

#include "../helperFiles/GLSL_helper.h"
#include "../assets/Assets.hpp"
#include "../engine/NutGame.hpp"
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "DepthWheel.hpp"

class DepthGuage : public Renderable {
   private:
   	  NutGame* nutGame;
      DepthWheel* ones;
      DepthWheel* tens;
      DepthWheel* hundreds;
      DepthWheel* thousands;
      DepthWheel* tenThousands; 

   public:
      DepthGuage(NutGame* nutGame);
      ~DepthGuage();
      void render();
      void setModel();
};
#endif