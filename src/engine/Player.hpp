#ifndef __PLAYER_H_
#define __PLAYER_H_

class Player: public Movable {
   public:
      Player();
   private:
      float velocity;
      int lives;
}

#endif
