#ifndef Number_HPP
#define Number_HPP

#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "../helperFiles/MStackHelp.h"
#include "../assets/Assets.hpp"
#include "../rendering/Renderable.hpp"

class Number : public Renderable {
   public:
      virtual void setPositionNumber(int pos);
};

#endif