/**
 * Justin Fujikawa
 */

#include "Particles.hpp"
#include "../rendering/Renderer.hpp"

Particle::Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, float x, float y, float z, int mat) {
   alive = true;
   this->mass = mass;
   this->ttl = ttl;
   this->pos = pos;
   this->vel = vel;
   this->model = Assets::getMesh(Assets::SQUARE_M);
   this->shaderType = C_SHADE;
   scale = 0.5;
   //scaleX = 0.05;
   scaleX = x;
   //scaleY = 0.05;
   scaleY = y;
   //scaleZ = 0.05;
   scaleZ = z;
   this->ang = 0;
   this->front = glm::vec3(0, 0, 1);
   this->modelTrans.useModelViewMatrix();
   this->modelTrans.loadIdentity();
   this->mat = mat;
   this->box = BoundingBox2D(glm::vec2(pos.x, pos.y), scaleX, scaleY);
}

// Nothing in this function, but compiler complains if it isn't declared
Particle::~Particle() {
}

void Particle::render() {
   glm::vec3 look = Renderer::camera.eye - pos;
   look = glm::normalize(look);
   axis = glm::cross(front, look);
   ang = glm::acos(glm::dot(front, look)) * TO_DEGREES;
   position = pos;
   Renderable::render();
}

ParticleSystem::ParticleSystem() {
   pos = glm::vec3();
   on = false;
   perSec = 50;
   mass = 0.05;
   scaleX = 0.05;
   scaleY = 0.05;
   scaleZ = 0.05;
   time = 0;
   ttl = 5;
   spread = glm::vec3(4, 1, 4);
   vel = glm::vec3(0, 3, 0);
   numParticles = 0;
   mat = 0;
}

ParticleSystem::~ParticleSystem() {

}

ParticleSystem::ParticleSystem(glm::vec3 pos, int mat) {
   this->pos = pos;
   on = false;
   perSec = 20; // CHANGE THIS BACK TO 50
   mass = 0.05;
   time = 0;
   ttl = 3;  //CHANGE THIS BACK TO 5
   spread = glm::vec3(4, 4, 4);
   vel = glm::vec3(0, 4.5, 0);
   numParticles = 0;
   this->mat = mat;
}

ParticleSystem::ParticleSystem(glm::vec3 pos, glm::vec3 vel, glm::vec3 spread, int perSec,
                               float mass, float ttl) {
   this->pos = pos;
   this->vel = vel;
   this->spread = spread;
   this->perSec = perSec;
   this->mass = mass;
   this->ttl = ttl;
   on = false;
   time = 0;
   numParticles = 0;
}

void ParticleSystem::add() {
   glm::vec3 newVel;

   newVel.x = vel.x + srandf(spread.x);
   newVel.y = vel.y + srandf(spread.y);
   newVel.z = vel.z + srandf(spread.z);

   p.push_back(Particle(mass, ttl, pos, newVel, scaleX, scaleY, scaleZ, mat));
}

void ParticleSystem::add(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, float x, float y, float z, int mat) {
   p.push_back(Particle(mass, ttl, pos, vel, scaleX, scaleY, scaleZ, mat));
}

void ParticleSystem::burst(int num) {
   for (int i = 0; i < num; i++) {
      add();
   }
}

void ParticleSystem::moveTo(glm::vec3 to) {
   pos = to;
}

void ParticleSystem::moveBy(glm::vec3 by) {
   pos += by;
}

void ParticleSystem::setInitialVelocity(glm::vec3 newVel) {
   vel = newVel;
}

void ParticleSystem::setMass(float newMass) {
   mass = newMass;
}

void ParticleSystem::setMatID(int matID) {
   mat = matID;
}

void ParticleSystem::setPerSec(int n) {
   perSec = n;
}

void ParticleSystem::setScale(float x, float y, float z) {
   scaleX = x;
   scaleY = y;
   scaleZ = z;
}

void ParticleSystem::setSpread(glm::vec3 newSpread) {
   spread = newSpread;
}

void ParticleSystem::setTTL(float newTTL) {
   ttl = newTTL;
}

void ParticleSystem::setType(int type) {
   switch (type) {
      case CRYSTALBLOCK:
         //
         break;
      case DIRTBLOCK:
         //
         break;
      case LAVABLOCK:
         //
         break;
      case SANDBLOCK:
         //
         break;
      case STONEBLOCK:
         //
         break;
   }
}

void ParticleSystem::start() {
   on = true;
}

void ParticleSystem::stop() {
   on = false;
   time = numParticles = 0;
}


void ParticleSystem::timeStep(float dt, std::vector<std::vector<Movable *> > gameGrid) {//Movable* gameGrid[17][7]) {
   float perParticle = 1.0f / perSec;
   float toGenerate = 0;
   std::vector<Particle>::iterator it;

   // Here we need to generate particles according to the time
   if (on) {
      for (toGenerate = (time + dt - numParticles * perParticle) / perParticle; toGenerate > 0.0; toGenerate -= 1.0f) {
         add();
         numParticles++;
      }

      time += dt;
   }
   computeForces(gameGrid); // Somehow get all forces affecting all Particles

   it = p.begin();
   while (it != p.end()) {
      it->pos += dt * it->vel;
      it->moveBoundingBoxTo(glm::vec2(it->pos.x, it->pos.y));
      it->vel += dt * it->netForce / it->mass;
      it->ttl -= dt;
      if (it->ttl <= 0 || !it->alive) {
         it = p.erase(it);
      }
      else {
         it++;
      }
   }
   it = es.begin();
   while (it != es.end()) {
      it->pos += dt * it->vel;
      it->moveBoundingBoxTo(glm::vec2(it->pos.x, it->pos.y));
      it->vel += dt * glm::vec3(0, GRAVITY, 0);
      it->ttl -= dt;
      if (it->ttl <= 0) {
         it = es.erase(it);
      }
      else {
         it++;
      }
   }

   DEBUG("finished Timestep");
}


void ParticleSystem::computeForces(std::vector<std::vector<Movable *> > gameGrid) {//Movable* gameGrid[17][7]) {
   /**
    * F = ma
    * a = F/m
    * CENTER_OF_FIRST_BLOCK = (0,0)
    * PARTICLE_SPACE = 0.1
    * Each block is 1x1x1 unit dimension
    *
    *     COLUMNS
    *    0 1 2 3 4 5 6
    *  0 # # # # # # #
    *R 1 # # # # # # #
    *O 2 # # # # # # #
    *W 3 # # # # # # #
    *S 4 # # # # # # #
    *  5 # # # # # # #
    *  6 # # # # # # #
    *  ...
    * 16 # # # # # # #
    */
   int col, row;
   int estCol, estRow;
   int numCols = 7, numRows = gameGrid.size();
   float horizontalPush = -1.8;
   float groundPush = -1.8;
   float particleWidth = 0.1; //Make this bigger if particles are going through blocks
   float blockWidth = 1;

   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
      it->netForce = glm::vec3(0, GRAVITY * it->mass, 0);

      //Find the estimated column and row of moving particle
      // Moving left
      if (it->vel.x < 0) {
         estCol = (int)(it->pos.x + blockWidth / 2.0f + particleWidth);

      }// Moving right
      else {
         estCol = (int)(it->pos.x + blockWidth / 2.0f - particleWidth);

      }
      // Moving down
      if (it->vel.y < 0) {
         estRow = (int)((it->pos.y - blockWidth / 2.0f + particleWidth) * -1);
      }// Moving up
      else {
         estRow = (int)((it->pos.y - blockWidth / 2.0f - particleWidth) * -1);
      }

      //Actual column and row
      row = (int)((it->pos.y - blockWidth / 2.0f) * -1);
      col = (int)(it->pos.x + blockWidth / 2.0f);

      //Only check collisions if particle is in gameGrid
      /*printf("x:%f, y:%f     estCol: %d estRow: %d     col: %d row: %d\n", it->pos.x, it->pos.y,
             estCol, estRow, col, row);*/
      if (0 <= col && col < numCols && 0 <= row && row < numRows && it->pos.z <= 0.5) {
         // left collision check
         if (it->vel.x < 0 && estCol - 1 >= 0 && col < estCol) {
            if (gameGrid[row][col] && gameGrid[row][col]->getMovableType() == BLOCK && gameGrid[row][estCol - 1] && gameGrid[row][estCol - 1]->getMovableType() == BLOCK && it->isIntersecting(((Collidable*)gameGrid[row][estCol - 1]))) {
               if (((Block*)gameGrid[row][estCol - 1])->getBlockType() == SANDBLOCK) {
                  it->alive = false;
                  spraySand(it->pos, it->vel, COLLIDE_L);
               }
               it->vel.x += it->vel.x * horizontalPush;
               //it->netForce.x += it->vel.x * horizontalPush;
               //printf("left collision\n");

            }
         } // right collision check
         else if (estCol + 1 < numCols && col > estCol) {
            if (gameGrid[row][col] && gameGrid[row][col]->getMovableType() == BLOCK && gameGrid[row][estCol + 1] && gameGrid[row][estCol + 1]->getMovableType() == BLOCK && it->isIntersecting(((Collidable*)gameGrid[row][estCol + 1]))) {
               if (((Block*)gameGrid[row][estCol + 1])->getBlockType() == SANDBLOCK) {
                  it->alive = false;
                  spraySand(it->pos, it->vel, COLLIDE_R);
               }
               it->vel.x += it->vel.x * horizontalPush;
               //it->netForce.x += it->vel.x * horizontalPush;
               //printf("right collision\n");
            }
         }

         //Downward collision check
         if (it->vel.y < 0 && estRow + 1 < numRows) {
            if (gameGrid[row][col] && gameGrid[row][col]->getMovableType() == BLOCK && gameGrid[estRow + 1][col] && gameGrid[estRow + 1][col]->getMovableType() == BLOCK && it->isIntersecting(((Collidable*)gameGrid[estRow + 1][col]))) {
               if (((Block*)gameGrid[estRow + 1][col])->getBlockType() == SANDBLOCK) {
                  it->alive = false;
                  spraySand(it->pos, it->vel, COLLIDE_D);
               }
               it->vel.y += it->vel.y * groundPush;
               //it->netForce.y += it->vel.y * groundPush * 2;
            }
         }
         // back wall collision check #hardcodelife
         if (it->pos.z <= -0.4) {
            it->vel.z += it->vel.z * -2;
            //it->netForce.z += it->vel.z * -2;
         }
         /*if (col > 0 && col < numCols - 1 && gameGrid[row][col - 1] && it->isIntersecting((Collidable*)gameGrid[row][col - 1])) {
          it->vel += glm::vec3((it->vel.x) * horizontalPush, 0, 0);
          printf("isIntersecting:%d\n", it->isIntersecting((Collidable*)gameGrid[row][col - 1]));
          } // right collision check
          else if (col > 0 && col < numCols - 1 && gameGrid[row][col + 1] && it->isIntersecting((Collidable*)gameGrid[row][col + 1])) {
          it->vel += glm::vec3((it->vel.x) * horizontalPush, 0, 0);
          printf("isIntersecting:%d\n", it->isIntersecting((Collidable*)gameGrid[row][col + 1]));
          }
          // bottom collision check
          if (row > 0 && row < numRows - 1 && gameGrid[row + 1][col] && it->isIntersecting((Collidable*)gameGrid[row + 1][col])) {
          it->vel += glm::vec3(0, (it->vel.y) * groundPush, 0);
          printf("isIntersecting:%d\n", it->isIntersecting((Collidable*)gameGrid[row + 1][col]));
          } // top collision check
          else if (1) {
          // some top collision checking here
          }
          // back wall collision check #hardcodelife
          if (it->pos.z <= -0.4) {
          it->vel += glm::vec3(0, 0, it->vel.z * -2);
          }*/
      }
   }
}

void ParticleSystem::spraySand(glm::vec3 p, glm::vec3 v, int dir) {
   glm::vec3 newVel, newSpread;

   switch (dir) {
      case COLLIDE_L:
         newVel.x = -v.x / 2;
         newVel.y = v.y / 2;
         newVel.z = v.z / 2;
         newSpread.x = abs(newVel.x);
         newSpread.y = abs(newVel.y * 2) < 2 ? 2 : abs(newVel.y * 2);
         newSpread.z = abs(newVel.z * 2) < 2 ? 2 : abs(newVel.z * 2);
         break;
      case COLLIDE_R:
         newVel.x = -v.x / 2;
         newVel.y = v.y / 2;
         newVel.z = v.z / 2;
         newSpread.x = abs(newVel.x);
         newSpread.y = abs(newVel.y * 2) < 2 ? 2 : abs(newVel.y * 2);
         newSpread.z = abs(newVel.z * 2) < 2 ? 2 : abs(newVel.z * 2);
         break;
      case COLLIDE_D:
         newVel.x = v.x / 2;
         newVel.y = -v.y / 2;
         newVel.z = v.z / 2;
         newSpread.x = abs(newVel.x * 2) < 2 ? 2 : abs(newVel.x * 2);
         newSpread.y = abs(newVel.y);
         newSpread.z = abs(newVel.z * 2) < 2 ? 2 : abs(newVel.z * 2);
         break;
   }

   save();
   pos = p;
   mass = 0.05;
   ttl = 0.5;
   vel = newVel;
   spread = newSpread;
   mat = 0;
   setScale(0.01, 0.01, 0.01);
   esBurst(25);
   revert();
}

float ParticleSystem::randf(float num) {
   return ((float)rand() / (float)RAND_MAX) * num;
}

float ParticleSystem::srandf(float num) {
   return ((float)rand() / (float)RAND_MAX) * num * 2 - num;
}

void ParticleSystem::save() {
   smass = mass;
   sttl = ttl;
   spos = pos;
   svel = vel;
   sspread = spread;
   smat = mat;
   sscaleX = scaleX;
   sscaleY = scaleY;
   sscaleZ = scaleZ;
}

void ParticleSystem::revert() {
   mass = smass;
   ttl = sttl;
   pos = spos;
   vel = svel;
   spread = sspread;
   mat = smat;
   setScale(sscaleX, sscaleY, sscaleZ);
}

void ParticleSystem::render() {
   int i;

   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
         it->render();
   }
   for (std::vector<Particle>::iterator it = es.begin(); it != es.end(); ++it) {
         it->render();
   }
}

void ParticleSystem::renderLightMap() {
   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
         it->renderLightMap();
   }
   for (std::vector<Particle>::iterator it = es.begin(); it != es.end(); ++it) {
         it->renderLightMap();
   }
}

void ParticleSystem::esAdd() {
   glm::vec3 newVel;

   newVel.x = vel.x + srandf(spread.x);
   newVel.y = vel.y + srandf(spread.y);
   newVel.z = vel.z + srandf(spread.z);

   es.push_back(Particle(mass, ttl, pos, newVel, scaleX, scaleY, scaleZ, mat));
}

void ParticleSystem::esBurst(int num) {
   for (int i = 0; i < num; i++) {
      esAdd();
   }
}
