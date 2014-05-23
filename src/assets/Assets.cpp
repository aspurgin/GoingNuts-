#include "Assets.hpp"


namespace Assets {
   
   namespace {
      //Entire system for the sound
      FMOD::System *soundSystem;
      //Error result
      FMOD_RESULT result;
      //create a map for sounds and music
      std::map<int, FMOD::Sound*> sounds, music;

      Mesh squirrel, block, nut, depthWheel, background, guageMask1, guageMask2, scoreMask1, scoreMask2, youWon, youLost, cylinder;

      Texture whiteDepthWheel, blackDepthWheel, hudElements, cylinderNormal, cylinderColor, dirtColor, dirtNormal, rockColor, rockNormal, squirrelTex;
      std::map<int, Mesh> meshes;
      std::map<int, Texture> textures;
      CellShader cshader;
      CellShaderTexture ctshader;
      FlatTextureShader ftshader;
      LightMapShader lmshader;
      PhongTextureShader ptshader;
      PhongShader pshader;
  
      //code found from tutorial: http://katyscode.wordpress.com/2012/10/05/cutting-your-teeth-on-fmod-part-1-build-environment-initialization-and-playing-sounds/
      void FMODErrorCheck(FMOD_RESULT res) {
         if (result != FMOD_OK)
         {
            std::cout << "FMOD error! (" << result << ") " << FMOD_ErrorString(result) << std::endl;
            exit(-1);
         }
      }

      void loadTextures() {
         whiteDepthWheel = Texture("assets/textures/MileageCounterWhite.jpg");
         blackDepthWheel = Texture("assets/textures/MileageCounterBlack.jpg");
         hudElements = Texture("assets/textures/HUDElements.png", RGBA_TEX);
         
         cylinderColor = Texture("assets/textures/Cylinder_Color.png", RGB_TEX);
         cylinderNormal = Texture("assets/textures/Cylinder_Normal.png", RGB_TEX);
         squirrelTex = Texture("assets/textures/squirrel.png", RGBA_TEX);

         dirtColor = Texture("assets/textures/DirtTextureTileable.jpg");
         dirtNormal = Texture("assets/textures/DirtTextureTileableNormals.jpg");

         rockColor = Texture("assets/textures/testRock.png");
         rockNormal = Texture("assets/textures/RockTextureTileableNormals.jpg");

         textures[WHITE_DEPTH_WHEEL_T] = whiteDepthWheel;
         textures[BLACK_DEPTH_WHEEL_T] = blackDepthWheel;
         textures[HUD_ELEMENTS_T] = hudElements;
         textures[CYLINDER_COLOR_T] = cylinderColor;
         textures[CYLINDER_NORMAL_T] = cylinderNormal;
         textures[DIRT_COLOR_T] = dirtColor;
         textures[DIRT_NORMAL_T] = dirtNormal;
         textures[ROCK_COLOR_T] = rockColor;
         textures[ROCK_NORMAL_T] = rockNormal;
         textures[SQUIRREL_T] = squirrelTex;
      }

      void loadMeshes() {
         squirrel = Mesh("assets/models/AnimSquirrel.dae");
         block = Mesh("assets/models/Block0.obj");
         nut = Mesh("assets/models/Acorn.obj");
         depthWheel = Mesh("assets/models/DepthWheel.obj");
         background = Mesh("assets/models/Background.obj");
         guageMask1 = Mesh("assets/models/GuageMask1.obj");
         guageMask2 = Mesh("assets/models/GuageMask2.obj");
         scoreMask1 = Mesh("assets/models/ScoreMask1.obj");
         scoreMask2 = Mesh("assets/models/ScoreMask2.obj");
         youWon = Mesh("assets/models/YouWon.obj");
         youLost = Mesh("assets/models/YouLost.obj");
         cylinder = Mesh("assets/models/Cylinder.obj");

         block.buildBuffers();
         squirrel.buildBuffers();
         nut.buildBuffers();
         depthWheel.buildBuffers();
         background.buildBuffers();
         guageMask1.buildBuffers();
         guageMask2.buildBuffers();
         scoreMask1.buildBuffers();
         scoreMask2.buildBuffers();
         youWon.buildBuffers();
         youLost.buildBuffers();
         cylinder.buildBuffers();

         meshes[SQUIRREL_M] = squirrel;
         meshes[BLOCK_M] = block;
         meshes[NUT_M] = nut;
         meshes[DEPTH_WHEEL_M] = depthWheel;
         meshes[BACKGROUND_M] = background;
         meshes[DEPTH_GUAGE_MASK_1_M] = guageMask1;
         meshes[DEPTH_GUAGE_MASK_2_M] = guageMask2;
         meshes[SCORE_GUAGE_MASK_1_M] = scoreMask1;
         meshes[SCORE_GUAGE_MASK_2_M] = scoreMask2;
         meshes[YOU_WON_M] = youWon;
         meshes[YOU_LOST_M] = youLost;
         meshes[CYLINDER_M] = cylinder;
      }

      void initShaders() {
         pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"),
            textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));


         cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
            textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

         ctshader = ShaderUtils::installCellShaderTexture(textFileRead((char *) "assets/shaders/CellShaderTexture_Vert.glsl"),
            textFileRead((char *) "assets/shaders/CellShaderTexture_Frag.glsl"));

         ptshader = ShaderUtils::installPhongTextureShader(textFileRead((char *) "assets/shaders/PhongTextureShader_Vert.glsl"),
            textFileRead((char *) "assets/shaders/PhongTextureShader_Frag.glsl"));

         ftshader = ShaderUtils::installFlatTextureShader(textFileRead((char *) "assets/shaders/FlatTextureShader_Vert.glsl"),
            textFileRead((char *) "assets/shaders/FlatTextureShader_Frag.glsl"));

         lmshader = ShaderUtils::installLightMapShader(textFileRead((char *) "assets/shaders/LightMap_Vert.glsl"), 
            textFileRead((char *) "assets/shaders/LightMap_Frag.glsl"));
      }

      void loadSound(const char *filename, int type) {
         FMOD::Sound *sound;
         result = soundSystem->createSound(filename, FMOD_DEFAULT, 0, &sound);
         FMODErrorCheck(result);

         //put the pointer to the sound as value in hash map
         sounds[type] = sound;
      }

      void loadTrack(const char *filename, int type) {
         FMOD::Sound *track;
         result = soundSystem->createStream(filename, FMOD_DEFAULT, 0, &track);
         FMODErrorCheck(result);
         //put pointer to the music track as value in hash map
         music[type] = track;
      }

      void loadSoundsAndMusic() {
         unsigned int version;

         //Create the sound system
         result = FMOD::System_Create(&soundSystem);
         FMODErrorCheck(result);

         //Check the version of the sound system for compatibility
         result = soundSystem->getVersion(&version);
         
         if (version < FMOD_VERSION)
         {
            std::cout << "Error! You are using an old version of FMOD " << version << ". This program requires " << FMOD_VERSION << std::endl;
            exit(-1);
         }

         //Initialize the system with 32 channels. 32 was an arbitrary number and may be changed.
         result = soundSystem->init(32, FMOD_INIT_NORMAL, 0);
         //Check if there was a problem making a sound buffer
         if (result == FMOD_ERR_OUTPUT_CREATEBUFFER)
         {
            result = soundSystem->setSpeakerMode(FMOD_SPEAKERMODE_STEREO);
            FMODErrorCheck(result);

            result = soundSystem->init(32, FMOD_INIT_NORMAL, 0);
         }
         FMODErrorCheck(result);

         //load all music tracks
         loadTrack("assets/audio/tracks/goingnuts.mp3", GAME_M);
         loadTrack("assets/audio/tracks/goingnutsgg.mp3", TITLE_M);

         //load all sound effects
         loadSound("assets/audio/sfx/blockfall.wav", BLOCK_FALL_S);
         loadSound("assets/audio/sfx/itemget.wav", ITEM_S);
         loadSound("assets/audio/sfx/nutget.wav", NUT_S);

      }

      //free everything
      void releaseSoundsAndMusic() {
         soundSystem->release();
      }
   }

   void loadAssets() {
      loadTextures();
      loadMeshes();
      initShaders();
      loadSoundsAndMusic();
   }

   void playSound(int type) {
      if (Settings::soundEnabled()) {
         result = soundSystem->playSound(FMOD_CHANNEL_FREE, sounds[type], false, 0);
         FMODErrorCheck(result);
         soundSystem->update();
      }
   }

   void playMusic(int type) {
      if (Settings::musicEnabled()) {
         FMOD::Channel *channel;
         float frequency;
         result = soundSystem->playSound(FMOD_CHANNEL_FREE, music[type], false, &channel);
         FMODErrorCheck(result);
         channel->setVolume(0.5f);
         channel->getFrequency(&frequency);
         channel->setMode(FMOD_LOOP_NORMAL);
         printf("frequency: %f\n", frequency);
         channel->setFrequency(frequency*1.28f);
         channel->setPaused(false);
      }
   }

   Mesh& getMesh(int type) {
      /*if (type == SQUIRREL_M) {
         printf("num verts: %d\n", meshes[type].getVertCount());
      }*/
      
      return meshes[type];
   }

   Texture& getTexture(int type){
      return textures[type];
   }

   CellShader& getCShader() {
      return cshader;
   }

   CellShaderTexture& getCShaderTexture() {
      return ctshader;
   }

   FlatTextureShader& getFlatTextureShader() {
      return ftshader;
   }

   PhongTextureShader& getPhongTextureShader() {
      return ptshader;
   }

   PhongShader& getPShader() {
      return pshader;
   }

   LightMapShader& getLightMapShader() {
      return lmshader;
   }
   
   void releaseAll() {
      releaseSoundsAndMusic();
   }

   void update() {
      soundSystem->update();
   }
}
