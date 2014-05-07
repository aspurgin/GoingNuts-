#include "Settings.hpp"

namespace Settings {
   namespace {
      bool soundOn = true;
      bool musicOn = true;
   }

   void defaultSettings() {
      soundOn = true;
      musicOn = true;
   }

   void setSoundEnabled(bool enableSound) {
      soundOn = enableSound;
   }

   bool soundEnabled() {
      return soundOn;
   }

   void toggleSoundEnabled() {
      soundOn = !soundOn;
   }

   void setMusicEnabled(bool enableMusic) {
      musicOn = enableMusic;
   }

   bool musicEnabled() {
      return musicOn;
   }

   void toggleMusicEnabled() {
      musicOn = !musicOn;
   }
}