#ifndef QuestionMark_HPP
#define QuestionMark_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class QuestionMark : public Renderable {
   public:
      QuestionMark();
      void render();
};

#endif