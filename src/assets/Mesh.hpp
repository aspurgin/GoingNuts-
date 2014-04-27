#ifndef MESH_H
#define MESH_H

#include <vector>
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <float.h>
#include <iostream>
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <assimp/Importer.hpp>      // C++ importer interface
#include <assimp/scene.h>           // Output data structure
#include <assimp/postprocess.h>     // Post processing flags

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#endif

#define MAX_CHARS_PER_LINE 256

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
      void parseAI(const char* path);
};

#endif
