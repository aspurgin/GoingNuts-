#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   drill = Drill();
   this->velocity = 1.f;
   this->lives = 3;
}

void Player::drillBlock(Block *block) {
   drill.drillBlock(block);
}
