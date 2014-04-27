/**
 * 
 */

#include "Particles.hpp"

Particle::Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel) {
   this->mass = mass;
   this->ttl = ttl;
   this->pos = pos;
   this->vel = vel;
   
   newPos = vec3(0);
   newVel = vec3(0);
   forces = vec3(0);
}

ParticleSystem::ParticleSystem() {
   p = vector<Particle>();
   size = 0;
   time = 0;
}

void ParticleSystem::timeStep(float dt) {
   computeForces(dt);
   time += dt;
}

void ParticleSystem::computeForces(float dt) {
   std::vector<Particle>::iterator it = p.begin();

   for ( ; it != v.end(); ++it) {
      it->forces = glm::vec3(0);
      // sum forces
      
      it->forces *= dt;
   }
   /* for () {
      sumForces();
   } */
   // calculate forces
   // update the field values
}
