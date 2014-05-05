#ifndef __LIGHT_H
#define __LIGHT_H

#include <glm/glm.hpp>

class Light {
   public:
      glm::vec3 position;
      glm::vec3 color;
      Light();
      void setPosition(glm::vec3);
};

#endif