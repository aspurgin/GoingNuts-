#ifndef TEXTURE_HPP
#define TEXTURE_HPP 

#include <GL/glew.h>

#include <GLFW/glfw3.h>
#include <SOIL/SOIL.h>


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