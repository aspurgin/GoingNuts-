/**
 * Particles  
 */
#ifndef Obstacles_H_
#define Obstacles_H_

#include <vector>
#include <glm/glm.hpp>

typedef struct Particle {
   float mass;
   float ttl;
   glm::vec3 pos;
   glm::vec3 newPos; // not sure what this is for
   glm::vec3 vel;
   glm::vec3 newVelocity; // not sure what this is for
   glm::vec3 netForce;
   // Need list of things that are applying forces

   Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel);
   ~Particle();
} Particle;

class ParticleSystem {
   public:
      ParticleSystem();
      ParticleSystem(float mass, float ttl, glm::vec3 pos, glm::vec3 vel);
      ~ParticleSystem();

      /* creates a new Particle in the ParticleSystem */
      void add();
      void add(float mass, float ttl, glm::vec3 pos, glm::vec3 vel);
      /* turns on automatic generation of Particles */
      void begin();
      /* turns off automatic generation of Particles */
      void end();
      /* sets the starting position of Particles generated */
      void moveTo(glm::vec3 to);
      /* displaces the position of Particles generated */
      void moveBy(glm::vec3 by);
      /* sets the time, in seconds, it takes to automatically generate a Particle */
      void setDelay(float delay);
      void setInitialVelocity();
      /* changes the starting mass of Particles generated */
      void setMass(float newMass);
      /* set the number of Particles automatically generated */
      void setNumber();
      /* sets the time, in seconds, a Particle is alive for */
      void setTTL(float newTTL);
      /* simulates the particles given a time step */
      void timeStep(float dt);
   private:
      std::vector<Particle> p;
      bool on;
      int size;
      int toGenerate;
      float delay;
      float time;
      float mass;
      float ttl;
      glm::vec3 pos;
      glm::vec3 vel;

      /* calculates and sets net force for each Particle */
      void computeForces();
};

#endif