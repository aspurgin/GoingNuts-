#ifndef SCORE_GUAGE_HPP
#define SCORE_GUAGE_HPP

#include "../helperFiles/GLSL_helper.h"
#include "../assets/Assets.hpp"
#include "../engine/NutGame.hpp"
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "DepthWheel.hpp"
#include "ScoreGuageMask.hpp"

class ScoreGuage : public Renderable {
   private:
   	NutGame* nutGame;
      DepthWheel* ones;
      DepthWheel* tens;
      DepthWheel* hundreds;
      DepthWheel* thousands;
      DepthWheel* tenThousands; 
      ScoreGuageMask* scoreGuageMask;

   public:
      ScoreGuage(NutGame* nutGame);
      ~ScoreGuage();
      void render();
      void setModel();
};
#endif