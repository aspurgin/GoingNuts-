#include "Assets.hpp"


namespace Assets {
   
   namespace {
      FMOD::System *soundSystem;
      FMOD_RESULT result;
      std::map<int, FMOD::Sound*> sounds, music;
      Mesh squirrel, block, nut, depthWheel, background, guageMask1, guageMask2, scoreMask1, scoreMask2;
      Texture whiteDepthWheel, blackDepthWheel, hudElements;
      std::map<int, Mesh> meshes;
      std::map<int, Texture> textures;
      CellShader cshader;
      CellShaderTexture ctshader;
      FlatTextureShader ftshader;
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
         hudElements = Texture("assets/textures/HUDElements.jpg");

         textures[WHITE_DEPTH_WHEEL_T] = whiteDepthWheel;
         textures[BLACK_DEPTH_WHEEL_T] = blackDepthWheel;
         textures[HUD_ELEMENTS_T] = hudElements;
      }

      void loadMeshes() {
         squirrel = Mesh("assets/models/AnimSquirrel.dae");
         block = Mesh("assets/models/Cube.obj");
         nut = Mesh("assets/models/Acorn.obj");
         depthWheel = Mesh("assets/models/DepthWheel.obj");
         background = Mesh("assets/models/Background.obj");
         guageMask1 = Mesh("assets/models/GuageMask1.obj");
         guageMask2 = Mesh("assets/models/GuageMask2.obj");
         scoreMask1 = Mesh("assets/models/ScoreMask1.obj");
         scoreMask2 = Mesh("assets/models/ScoreMask2.obj");

         block.buildBuffers();
         squirrel.buildBuffers();
         nut.buildBuffers();
         depthWheel.buildBuffers();
         background.buildBuffers();
         guageMask1.buildBuffers();
         guageMask2.buildBuffers();
         scoreMask1.buildBuffers();
         scoreMask2.buildBuffers();

         meshes[SQUIRREL_M] = squirrel;
         meshes[BLOCK_M] = block;
         meshes[NUT_M] = nut;
         meshes[DEPTH_WHEEL_M] = depthWheel;
         meshes[BACKGROUND_M] = background;
         meshes[DEPTH_GUAGE_MASK_1_M] = guageMask1;
         meshes[DEPTH_GUAGE_MASK_2_M] = guageMask2;
         meshes[SCORE_GUAGE_MASK_1_M] = scoreMask1;
         meshes[SCORE_GUAGE_MASK_2_M] = scoreMask2;
      }

      void initShaders() {
         pshader = ShaderUtils::installPhongShader(textFileRead((char *) "assets/shaders/Phong_Vert.glsl"),
            textFileRead((char *) "assets/shaders/Phong_Frag.glsl"));


         cshader = ShaderUtils::installCellShader(textFileRead((char *) "assets/shaders/CellShader_Vert.glsl"),
            textFileRead((char *) "assets/shaders/CellShader_Frag.glsl"));

         ctshader = ShaderUtils::installCellShaderTexture(textFileRead((char *) "assets/shaders/CellShaderTexture_Vert.glsl"),
            textFileRead((char *) "assets/shaders/CellShaderTexture_Frag.glsl"));

         ftshader = ShaderUtils::installFlatTextureShader(textFileRead((char *) "assets/shaders/FlatTextureShader_Vert.glsl"),
            textFileRead((char *) "assets/shaders/FlatTextureShader_Frag.glsl"));
      }

      void loadSound(const char *filename, int type) {
         FMOD::Sound *sound;
         result = soundSystem->createSound(filename, FMOD_DEFAULT, 0, &sound);
         FMODErrorCheck(result);
         sounds[type] = sound;
      }

      void loadTrack(const char *filename, int type) {
         FMOD::Sound *track;
         result = soundSystem->createStream(filename, FMOD_DEFAULT, 0, &track);
         FMODErrorCheck(result);
         music[type] = track;
      }

      void loadSoundsAndMusic() {
         unsigned int version;

         result = FMOD::System_Create(&soundSystem);
         FMODErrorCheck(result);
         result = soundSystem->getVersion(&version);
         
         if (version < FMOD_VERSION)
         {
            std::cout << "Error! You are using an old version of FMOD " << version << ". This program requires " << FMOD_VERSION << std::endl;
            exit(-1);
         }

         result = soundSystem->init(32, FMOD_INIT_NORMAL, 0);
         if (result == FMOD_ERR_OUTPUT_CREATEBUFFER)
         {
            result = soundSystem->setSpeakerMode(FMOD_SPEAKERMODE_STEREO);
            FMODErrorCheck(result);

            result = soundSystem->init(32, FMOD_INIT_NORMAL, 0);
         }
         FMODErrorCheck(result);

         loadTrack("assets/audio/tracks/goingnuts.mp3", GAME_M);
         loadTrack("assets/audio/tracks/goingnutsgg.mp3", TITLE_M);

         loadSound("assets/audio/sfx/blockfall.wav", BLOCK_FALL_S);
         loadSound("assets/audio/sfx/itemget.wav", ITEM_S);
         loadSound("assets/audio/sfx/nutget.wav", NUT_S);

      }

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

   PhongShader& getPShader() {
      return pshader;
   }
   
   void releaseAll() {
      releaseSoundsAndMusic();
   }

   void update() {
      soundSystem->update();
   }
}
