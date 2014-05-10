#include "Player.hpp"

Player::Player() {}

Player::Player(glm::vec3 center, float width, float height) {
   setObject(center, width, height);
   this->drill = Drill();
   this->velocity = 1.f;
   this->lives = 3;
   this->score = 0;
   this->isDead = false;
}

void Player::drillBlock(Block *block) {
   drill.drillBlock(block);
}

int Player::getMovableType() {
   return PLAYER;
}

bool Player::shouldFall() {
	if (fallCounter != -1) {
		return true;
	}
	return false;
}

void Player::setWillFall() {
	fallCounter = 0;
}

void Player::addToScore(int num) {
	score += num;
}

int Player::getScore() {
	return score;
}

void Player::died() {
   isDead = true;
}

bool Player::getIsDead() {
   return isDead;
}
