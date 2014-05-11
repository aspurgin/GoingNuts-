#ifndef _ASSETS
#define _ASSETS
#include <fmod.hpp>
#include <fmod_errors.h>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <map>
#include "../engine/Settings.hpp"
#include "../shaders/CellShader.hpp"
#include "../shaders/FlatTextureShader.hpp"
#include "../shaders/ShaderUtils.hpp"
#include "../shaders/PhongShader.hpp"
#include "Mesh.hpp"
#include "Texture.hpp"

namespace Assets {
   enum Music { GAME_M, TITLE_M };
   enum Sound { ITEM_S, NUT_S, BLOCK_FALL_S };
   enum Meshes { SQUIRREL_M, BLOCK_M, NUT_M, DEPTH_WHEEL_M, BACKGROUND_M };
   enum Textures { WHITE_DEPTH_WHEEL_T, BLACK_DEPTH_WHEEL_T, HUD_ELEMENTS_T };

   void loadAssets();
   void playSound(int);
   void playMusic(int);
   Mesh& getMesh(int);
   Texture& getTexture(int) ;
   CellShader& getCShader();
   CellShaderTexture& getCShaderTexture();
   FlatTextureShader& getFlatTextureShader();
   PhongShader& getPShader();
   void releaseAll();
   void update();
};
#endif
