/**
 * Justin Fujikawa
 */
#ifndef PARTICLES_H_
#define PARTICLES_H_

#define GRAVITY -9.8

#include <vector>
#include <cstdlib>
#include <glm/glm.hpp>
#include "../rendering/Renderable.hpp"
#include "../assets/Assets.hpp"

class Particle: public Renderable {
   public:
      Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, int mat);
      ~Particle();

      float mass;
      float ttl;
      glm::vec3 pos;
      glm::vec3 newPos; // not sure what this is for
      glm::vec3 vel;
      glm::vec3 newVelocity; // not sure what this is for
      glm::vec3 netForce;
      // Need list of things that are applying forces
      // Need textureID field

      /* function to implement for Renderable template */
      void render();
      void setModel();
   private:
      Mesh model;
      CellShader cshader;      
};

class ParticleSystem: public Renderable {
   public:
      ParticleSystem();
      ParticleSystem(glm::vec3 pos, int mat);
      ParticleSystem(glm::vec3 pos, glm::vec3 vel, glm::vec3 spread, int perSec, float mass,
                     float ttl);
      ~ParticleSystem();

      /* generates a new Particle in the ParticleSystem */
      void add();
      void add(float mass, float ttl, glm::vec3 pos, glm::vec3 vel);
      /* generate num Particles instantly using set fields */
      void burst(int num);
      /* sets the starting position of Particles generated */
      void moveTo(glm::vec3 to);
      /* displaces the position of Particles generated */
      void moveBy(glm::vec3 by);
      /* sets the initial velocity of generated Particles */
      void setInitialVelocity(glm::vec3 newVel);
      /* changes the mass, in kilograms, of generated Particles */
      void setMass(float newMass);
      /* set the number of Particles automatically generated per second */
      void setPerSec(int n);
      /* sets the new spread for generated Particles */
      void setSpread(glm::vec3 newSpread);
      /* sets the time, in seconds, a Particle is alive for */
      void setTTL(float newTTL);
      /* turns on automatic generation of Particles */
      void start();
      /* turns off automatic generation of Particles */
      void stop();
      /* simulates the particles given a time step */
      void timeStep(float dt);

      /* Need to implement for Renderable template */
      void render();
      void setModel();

   private:
      std::vector<Particle> p;
      bool on;
      int perSec;
      int numParticles;
      float mass;
      float time;
      float ttl;
      glm::vec3 pos;
      glm::vec3 spread;
      glm::vec3 vel;

      /* calculates and sets net force for each Particle */
      void computeForces();
      /* returns a random float from the range 0 to "of" */
      float percentOf(float of);
      /* returns a random float from the range "-of" to "of" */
      float percentRange(float of);
};

#endif
