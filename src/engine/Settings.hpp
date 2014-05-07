#ifndef _SETTING
#define _SETTING


namespace Settings {
   void defaultSettings();
   void setSoundEnabled(bool enableSound);
   bool soundEnabled();
   void toggleSoundEnabled();
   void setMusicEnabled(bool enableSound);
   bool musicEnabled();
   void toggleMusicEnabled();

}
#endif
