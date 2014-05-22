/**
 * Justin Fujikawa
 */

#include "Particles.hpp"

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
}


// Nothing in this function but compiler complains if it isn't declared
Particle::~Particle() {}


void Particle::render() {
   glm::vec3 camVec = glm::normalize(glm::vec3(3, 1, 8) - pos);
   glm::vec3 right = glm::cross(camVec, glm::vec3(0, 1, 0));
   glm::vec3 axis = glm::cross(camVec, right);
   float angle = glm::dot(camVec, front) * TO_DEGREES;
   position = pos;
   Renderable::render();
}

ParticleSystem::ParticleSystem() {
   pos = glm::vec3();
   on = false;
   perSec = 50; // CHANGE THIS BACK TO 50
   mass = 0.05;
   time = 0;
   ttl = 5;  //CHANGE THIS BACK TO 5
   spread = glm::vec3(4, 4, 4);
   vel = glm::vec3(0, 4.5, 0);
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


void ParticleSystem::timeStep(float dt) {
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
   computeForces(); // Somehow get all forces affecting all Particles

   it = p.begin();
   while (it != p.end()) {
      it->pos += dt * it->vel;
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


void ParticleSystem::computeForces() {
   for (std::vector<Particle>::iterator it = p.begin(); it != p.end(); ++it) {
      it->netForce = glm::vec3(0, GRAVITY * it->mass, 0);
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
