#include "Block.hpp"

int moveableType = BLOCK;

Block::Block() {
   deathCounter = -1;
   shouldScale = false;
   timesDrilled = 0;
   groupIn = 0;
   model = Assets::getMesh(Assets::BLOCK_M);
   this->shaderType = PT_SHADE;
   scale = 0.5f;
   scaleX = 0.5f;
   scaleY = 0.5f;
   scaleZ = 0.5f;
   curScale = 0.48f;
   this->modelTrans.useModelViewMatrix();
   isFractured = false;
   //model.debug();
}

int Block::getTimesDrilled() {
   return timesDrilled;
}

void Block::addToTimesDrilled(int direction) {
   timesDrilled++;
   genParticles(direction);
   if (timesDrilled >= getStrength()) {
      if (isInAGroup()) {
         groupIn->destroy();
         delete groupIn;
      }
      else {
        //genParticles();
      }
      state = DEAD;
      //makeDead();
   }
}

int Block::getBlockType() {
   return blockType;
}

bool Block::isDead() {
   return timesDrilled >= getStrength();
}

bool Block::shouldDestroy() {
   if (isDead()) {
      return deathCounter >= .2;
   }
   return false;
}

void Block::incrementDeathCounter(double toAdd) {
   deathCounter += toAdd;
   scale -= toAdd;
}

int Block::getMovableType() {
   return BLOCK;
}

bool Block::shouldFall() {
	if (fallCounter >= HANG_TIME) {
      return true;
   }
	scale = curScale;

	if (fallCounter > 0) {
      psystem->save();
      psystem->setMatID(mat);
      psystem->moveTo(glm::vec3(center + glm::vec3(psystem->srandf(.5), -0.55, 0)));
      psystem->setTTL(.75);
      psystem->setInitialVelocity(glm::vec3(0, 0, 0));
      psystem->setSpread(glm::vec3(0, 0, 0));
      psystem->setScale(0.03, 0.03, 0.03);
      psystem->esAdd();
      psystem->revert();
	}
   return false;
}

void Block::setWillFall() {
   if (fallCounter < 0) {
      fallCounter = 0;
   }
}

void Block::makeDead() {
	timesDrilled = getStrength();
   state = DEAD;
   if (deathCounter < 0) {
      deathCounter = 0;
   }
   genParticles(0);
}

bool Block::isInAGroup() {
   return groupIn != 0;
}

BlockGroup* Block::getGroupIn() {
   return groupIn;
}

void Block::putInGroup(BlockGroup* group) {
   groupIn = group;
   curScale = 0.5f;
   scale = curScale;
}

void Block::setScale() {
   if (willFall()) {
      if (shouldScale) {
         shouldScale = false;
         scale = 0.45;
      }
      else {
         shouldScale = true;
         scale = curScale;
      }
   }
   else if (isDead()) {
      if (isFractured) {
         model->setAt("explode", deathCounter/0.2);
      }
      else {
         scale = curScale - deathCounter;
         //printf("My scale!: %f\n", scale);
      }
   }
   scaleX = scale;
   scaleY = scale;
   scaleZ = scale + 1;
}

void Block::render() {
   setScale();
   position = center + glm::vec3(0, 0, -1);

   glm::mat4 r = glm::rotate(90.f, 0.f, 1.f, 0.f);
   r = glm::rotate(r, 90.f, 0.f, 0.f, 1.f);
   
   Renderable::render(r);
}

void Block::genParticles(int direction) {
   psystem->save();
   switch (direction) {
      case 0:
         //printf("killing block?\n");
         psystem->moveTo(center + glm::vec3(0, 0, 0));
         psystem->setSpread(glm::vec3(4, 4, 4));
         psystem->setInitialVelocity(glm::vec3(0, 4, 0));
         break;
      case DRILLING_DOWN:
         //printf("drilling down\n");
         psystem->moveTo(center + glm::vec3(0, 0.5, 0));
         psystem->setSpread(glm::vec3(4, 4, 10));
         psystem->setInitialVelocity(glm::vec3(0, 4.5, 0));
         break;
      case DRILLING_UP:
         psystem->moveTo(center + glm::vec3(0, -0.5, 0));
         psystem->setSpread(glm::vec3(4, 2, 4));
         psystem->setInitialVelocity(glm::vec3(0, -1, 0));
         break;
      case DRILLING_RIGHT:
         psystem->moveTo(center + glm::vec3(-0.5, 0, 0));
         psystem->setSpread(glm::vec3(2, 4, 10));
         psystem->setInitialVelocity(glm::vec3(-2.5, 4.5, 0));
         break;
      case DRILLING_LEFT:
         psystem->moveTo(center + glm::vec3(0.5, 0, 0));
         psystem->setSpread(glm::vec3(2, 4, 10));
         psystem->setInitialVelocity(glm::vec3(2.5, 4.5, 0));
         break;
   }

   psystem->setType(blockType);
   psystem->setMatID(this->mat);
   switch (blockType) {
      case CRYSTALBLOCK:
         psystem->burst(25);
         break;
      case DIRTBLOCK:
         psystem->setScale(0.05, 0.05, 0.05);
         psystem->burst(25);
         break;
      case LAVABLOCK:
         psystem->setScale(0.075, 0.075, 0.075);
         psystem->burst(25);
         break;
      case SANDBLOCK:
         psystem->setScale(0.02, 0.02, 0.02);
         psystem->burst(25);
         break;
      case STONEBLOCK:
         psystem->setScale(0.175, 0.175, 0.075);
         if (this->state != DEAD) {
            psystem->setMatID(9);
            psystem->setScale(1, 1, 1);
            psystem->setTTL(.5);
            psystem->setTTLSpread(.25);
            if (direction == DRILLING_UP) { //special case
               psystem->setSpread(glm::vec3(1.5, 2, 1.5));
            }
            else {
               psystem->setInitialVelocity(glm::vec3(0, 1, 0));
               psystem->setSpread(glm::vec3(1, 2, 2));
            }
            psystem->burst(100);
            ////
            //spread = glm::vec3(4, 1, 4);
            //vel = glm::vec3(0, 3, 0);
            //psystem->setSpread(glm::vec3());
            //psystem->setInitialVelocity(glm::vec3(0.1,0.1,0));
            ////
            //psystem->sparkBurst(25);
         }
         else {
            psystem->burst(25);
         }

         break;
   }
   psystem->revert();
}

void Block::playHitGroundSound() {
   Assets::playSound(Assets::BLOCK_FALL_S);
}

