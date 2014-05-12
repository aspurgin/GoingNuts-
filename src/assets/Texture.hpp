#ifndef TEXTURE_HPP
#define TEXTURE_HPP 

#include <GL/glew.h>

#include <GLFW/glfw3.h>
#ifdef __unix__
#include <SOIL/SOIL.h>
#endif
#ifdef _WIN32
#include <SOIL/src/SOIL.h>
#endif

class Texture
{
   public:
      GLuint textureID;
      Texture() {};
      Texture(const char* fileName);
      ~Texture();

   private:
      GLuint loadTexture(const char* fileName);
};

#endif