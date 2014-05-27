/**
 * Justin Fujikawa
 */

#include "Particles.hpp"
#include "../rendering/Renderer.hpp"

Particle::Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, int mat) {
   this->mass = mass;
   this->ttl = ttl;
   this->pos = pos;
   this->vel = vel;
   this->model = Assets::getMesh(Assets::BLOCK_M);
   this->shaderType = C_SHADE;
   this->scale = .05;
   scaleX = 0.05;
   scaleY = 0.05;
   scaleZ = 0.05;
   this->ang = 0;
   this->front = glm::vec3(0, 0, 1);
   this->modelTrans.useModelViewMatrix();
   this->modelTrans.loadIdentity();
   this->mat = mat;
   this->box = BoundingBox2D(glm::vec2(pos.x, pos.y), scaleX, scaleY);
}


// Nothing in this function, but compiler complains if it isn't declared
Particle::~Particle() {}


void Particle::render() {
   glm::vec3 look = glm::vec3(Renderer::camera.eye.x, Renderer::camera.eye.y, Renderer::camera.eye.z) - pos;
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
   time = 0;
   ttl = 5;
   spread = glm::vec3(4, 1, 4);
   vel = glm::vec3(0, 3, 3);
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

   newVel.x = vel.x + percentRange(spread.x);
   newVel.y = vel.y + percentRange(spread.y);
   newVel.z = vel.z + percentRange(spread.z);

   p.push_back(Particle(mass, ttl, pos, newVel, mat));
}


void ParticleSystem::add(float mass, float ttl, glm::vec3 pos, glm::vec3 vel) {
   p.push_back(Particle(mass, ttl, pos, vel, mat));
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


void ParticleSystem::setSpread(glm::vec3 newSpread) {
   spread = newSpread;
}


void ParticleSystem::setTTL(float newTTL) {
   ttl = newTTL;
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
      if (it->ttl <= 0) {
         it = p.erase(it);
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
   int numCols = 7, numRows = 17;
   int direction = 0;
   float horizontalPush = -1.8;
   float groundPush = -2.0;
   float particleWidth = 0.1;
   float blockWidth = 1;

   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
      it->netForce = glm::vec3(0, GRAVITY * it->mass, 0);

      // Moving right
      /*if (it->vel.x > 0) {
         hcol = (int)(it->pos.x + particleWidth + blockWidth / 2.0f);
         hrow = (int)((it->pos.y - blockWidth) * -1);

      }// Moving left
      else {
         hcol = (int)(it->pos.x - particleWidth + blockWidth / 2.0f);
         hrow = (int)((it->pos.y - blockWidth) * -1);

      }
      // Moving up
      if (it->vel.y > 0) {
         vcol = (int)(it->pos.x + blockWidth / 2.0f);
         vrow = (int)((it->pos.y - particleWidth - blockWidth) * -1);

      }// Moving down
      else {
         vcol = (int)(it->pos.x + blockWidth / 2.0f);
         vrow = (int)((it->pos.y + particleWidth - blockWidth) * -1);
      }*/

      col = (int)(it->pos.x - blockWidth / 2.0f);
      row = (int)((it->pos.y + blockWidth / 2.0f) * -1);

      //Only check collisions if particle is in gameGrid
      //printf("pos x:%f, y:%f AND In box: %d, %d\n", pos.x, pos.y, col, row);
      //printf("currPos: %f, %f\n", it->pos.x, it->pos.y);
      /*if (0 <= col && col < numCols && 0 <= row && row < numRows && it->pos.z <= 0.5) {
         // left collision check
         if (col > 0 && col < numCols - 1 && gameGrid[row][col - 1] && it->isIntersecting((Collidable*)gameGrid[row][col - 1])) {
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
         }
      //}
      //Check if adjacent blocks exists
      */
   }
}


float ParticleSystem::percentOf(float of) {
   return ((float)rand() / (float)RAND_MAX) * of;
}


float ParticleSystem::percentRange(float of) {
   return ((float)rand() / (float)RAND_MAX) * of * 2 - of;
}


void ParticleSystem::render() {
   int i;

   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
      it->render();
   }
}

void ParticleSystem::renderLightMap() {
   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
      it->renderLightMap();
   }
}
