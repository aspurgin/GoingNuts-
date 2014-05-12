#include "Texture.hpp"

Texture::Texture(const char* fileName)
{
   textureID = loadTexture(fileName);
}

Texture::~Texture()
{}

GLuint Texture::loadTexture(const char* fileName)
{
   GLuint textureID;
   int width, height;
   unsigned char* image;

   // Load in the image onto the CPU using SOIL 
   image = SOIL_load_image(fileName, &width, &height, 0, SOIL_LOAD_RGB);

   // Generate an ID for the texture
   glGenTextures(1, &textureID);
   
   // Bind the texture
   glBindTexture(GL_TEXTURE_2D, textureID);

   // Put the texture on the GPU
   glTexImage2D(GL_TEXTURE_2D, 0,GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);

   // Make the texture wrap around
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
   
   // Add trilinear filtering and generate a mipmap
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR); 
   glGenerateMipmap(GL_TEXTURE_2D);

   // Free the CPU texture
   delete [] image;

   // Return the ID of the texture we just created
   return textureID;
}

