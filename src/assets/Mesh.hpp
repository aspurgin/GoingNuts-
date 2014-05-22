#ifndef MESH_H
#define MESH_H

#include <map>
#include <string>
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
#include "../helperFiles/Util.hpp"
#endif

#define MAX_CHARS_PER_LINE 256

class Mesh {
   public:
      Mesh(char* fileName);
      Mesh();
      ~Mesh();

      void buildBuffers();
      void setAt(const char*, float interp);
      void setAt(int index, float interp);
      void debug();

      size_t getVertCount();
      size_t getIdxCount();

      GLuint vertHandle() {return vertHandle_;};
      GLuint idxHandle() {return idxHandle_;};
      GLuint normHandle() {return normHandle_;};
      GLuint uvHandle() {return uvHandle_;};
      GLuint tangentHandle() {return tangentsHandle_;};
      GLuint bitangentHandle() {return bitangentsHandle_;};

   private:
      void parse(char* fileName);
      void parseAI(const char* path);
      void parseAnimIdx(const char* filename);
      void calculateTangentsAndBitangents();

      GLuint vertHandle_;
      GLuint idxHandle_;
      GLuint normHandle_;
      GLuint uvHandle_;
      GLuint tangentsHandle_;
      GLuint bitangentsHandle_;


      /**
       * holds animation framing info
       */
      std::map<std::string, int> animIds;
      std::map<int, glm::vec2> anims;

      /**
       * base model information, only to be written to at load-time
       */
      std::vector<glm::vec3> vertices;
      std::vector<glm::uvec3> indeces;
      std::vector<glm::vec2> uvs;
      std::vector<glm::vec3> normals;
      std::vector<glm::vec3> tangents;
      std::vector<glm::vec3> bitangents;
};

#endif
