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
#include "../shaders/PhongTextureShader.hpp"
#include "../rendering/Camera.hpp"

namespace Assets {
   enum Music { GAME_M, TITLE_M };
   enum Sound { ITEM_S, NUT_S, BLOCK_FALL_S };
   enum Meshes { SQUIRREL_M, BLOCK_M, NUT_M, DEPTH_WHEEL_M, BACKGROUND_M, DEPTH_GUAGE_MASK_1_M, DEPTH_GUAGE_MASK_2_M, 
                  SCORE_GUAGE_MASK_1_M, SCORE_GUAGE_MASK_2_M,  YOU_WON_M, YOU_LOST_M, CYLINDER_M, GOING_NUTS_M, SUN_M, NUT_COLOR_M, NUT_OUTLINE_M, ENERGY_M, POINTS_M, POWER_UP_BG_M, QUESTION_MARK_M, LEVEL_M, DEPTH_M };
   enum BlockMeshes {B0 = 0, B1 = 1, B2 = 2, B3 = 3, B4 = 4, B5 = 5, B6 = 6, B7 = 7, B8 = 8, B9 = 9, B10 = 10, B11 = 11, B12 = 12, B13 = 13, B14 = 14, B15 = 15};
   enum Textures { WHITE_DEPTH_WHEEL_T, BLACK_DEPTH_WHEEL_T, HUD_ELEMENTS_T, CYLINDER_NORMAL_T, CYLINDER_COLOR_T, DIRT_COLOR_T, DIRT_NORMAL_T, ROCK_COLOR_T, ROCK_NORMAL_T,  SQUIRREL_T};

   void loadAssets();
   void initializeCamera();
   Camera& getCamera();
   void playSound(int);
   void playMusic(int);
   Mesh& getMesh(int);
   Texture& getTexture(int) ;
   CellShader& getCShader();
   CellShaderTexture& getCShaderTexture();
   FlatTextureShader& getFlatTextureShader();
   PhongTextureShader& getPhongTextureShader();
   PhongShader& getPShader();
   LightMapShader& getLightMapShader();
   void releaseAll();
   void update();
};
#endif
