
#include <glm/glm.hpp>
#include "Camera.hpp"
#include "Light.hpp"
#include "../shaders/PhongShader.hpp"

class Renderer {
   public:
      Camera camera;
      Light light;
      PhongShader pshader;
      Renderer(PhongShader);
      void render();
};