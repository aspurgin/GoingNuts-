#include "Renderable.hpp"
#include "../assets/Assets.hpp"
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

class Wall : public Renderable {
   public:
      Wall();
      Wall(glm::vec3);
      void render();
      void setModel();
   private:
      Mesh model;
      glm::vec3 pos;
      CellShader cshader;
};