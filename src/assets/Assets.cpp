#include "Assets.hpp"


namespace Assets {
   
   namespace {
      FMOD::System *soundSystem;
      FMOD_RESULT result;
      std::map<int, FMOD::Sound*> sounds, music;
  
      //code found from tutorial: http://katyscode.wordpress.com/2012/10/05/cutting-your-teeth-on-fmod-part-1-build-environment-initialization-and-playing-sounds/
      void FMODErrorCheck(FMOD_RESULT res) {
         if (result != FMOD_OK)
         {
            std::cout << "FMOD error! (" << result << ") " << FMOD_ErrorString(result) << std::endl;
            exit(-1);
         }
      }

      void loadTextures() {

      }

      void loadMeshes() {

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
      loadSoundsAndMusic();
   }

   void playSound(int type) {
      if (Settings::soundEnabled()) {
         result = soundSystem->playSound(FMOD_CHANNEL_FREE, sounds[type], false, 0);
         FMODErrorCheck(result);

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

   void getMesh(int type) {

   }
   
   void releaseAll() {
      releaseSoundsAndMusic();
   }

   void update() {
      soundSystem->update();
   }
}
