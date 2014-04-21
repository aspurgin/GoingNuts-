#pragma once

#include <vector>
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <float.h>
#include <iostream>

#include <glm/glm.hpp>

class Mesh {
   public:
      std::vector<glm::vec3> vertices;
      std::vector<glm::vec2> uvs;
      std::vector<glm::vec3> normals;

      Mesh(char* fileName);
      Mesh();
      ~Mesh();

      void buildBuffers();
      void debug();
      GLuint objHandle;
      GLuint normHandle;
      GLuint uvHandle;
   private:   
      void parse(char* fileName);
};
