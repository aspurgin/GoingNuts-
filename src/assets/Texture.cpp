#include "Texture.hpp"

Texture::Texture(const char* fileName)
{
   textureID = loadTexture(fileName);
   type = RGB_TEX;
}

Texture::Texture(const char* fileName, ImageType type)
{
   textureID = loadTexture(fileName);
   this->type = type;
}

Texture::~Texture()
{}

GLuint Texture::loadTexture(const char* fileName)
{
   GLuint tex_2d = SOIL_load_OGL_texture
   (
      fileName,
      SOIL_LOAD_AUTO,
      SOIL_CREATE_NEW_ID,
      SOIL_FLAG_MIPMAPS | SOIL_FLAG_INVERT_Y | SOIL_FLAG_NTSC_SAFE_RGB | SOIL_FLAG_COMPRESS_TO_DXT
   );
   
   /* check for an error during the load process */
   if( 0 == tex_2d )
   {
      printf( "SOIL loading error: '%s'\n", SOIL_last_result() );
   }

   return tex_2d;
}

