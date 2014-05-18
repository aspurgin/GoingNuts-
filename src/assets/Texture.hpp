#ifndef TEXTURE_HPP
#define TEXTURE_HPP 

#include <stdio.h>
#include <GL/glew.h>

#include <GLFW/glfw3.h>
#ifdef __unix__
#include <SOIL/SOIL.h>
#endif
#ifdef _WIN32
#include <SOIL/src/SOIL.h>
#endif

enum ImageType {RGB_TEX, RGBA_TEX};

class Texture
{
   public:
      GLuint textureID;
      ImageType type;
      Texture() {};
      Texture(const char* fileName);
      Texture(const char* fileName, ImageType type);
      ~Texture();

   private:
      GLuint loadTexture(const char* fileName);
};

#endif