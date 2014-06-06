/**
 * Justin Fujikawa
 */
#ifndef PARTICLES_H_
#define PARTICLES_H_

#define GRAVITY -9.8
#define PI 3.14159
#define TO_DEGREES 57.2957795
#define COLLIDE_L 1
#define COLLIDE_R 2
#define COLLIDE_D 3

#include <vector>
#include <cstdlib>
#include <glm/glm.hpp>
#include "../rendering/Renderable.hpp"
#include "../engine/Movable.hpp"
#include "../assets/Assets.hpp"

class Particle: public Renderable, public Collidable {
   public:
      Particle(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, float x, float y, float z, int mat);
      ~Particle();

      bool alive;
      float mass;
      float ttl;
      glm::vec3 pos;
      glm::vec3 newPos; // not sure what this is for
      glm::vec3 vel;
      glm::vec3 newVelocity; // not sure what this is for
      glm::vec3 netForce;
      
      glm::vec3 front;
      // Need list of things that are applying forces
      // Need textureID field

      /* function to implement for Renderable template */
      void render();
   private:
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
      void add(float mass, float ttl, glm::vec3 pos, glm::vec3 vel, float x, float y, float z, int mat);
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
      /* sets the material ID of generated particles */
      void setMatID(int matID);
      /* set the number of Particles automatically generated per second */
      void setPerSec(int n);
      /* set the scale of Particles automatically generated */
      void setScale(float x, float y, float z);
      /* sets the new spread for generated Particles */
      void setSpread(glm::vec3 newSpread);
      /* sets the time, in seconds, a Particle is alive for */
      void setTTL(float newTTL);
      /* sets the type, based on blockType, of the generated Particles */
      void setType(int type);
      /* turns on automatic generation of Particles */
      void start();
      /* turns off automatic generation of Particles */
      void stop();
      /* simulates the particles given a time step */
      void timeStep(float dt, std::vector<std::vector<Movable *> > gameGrid);//Movable* gameGrid[17][7]);
      /* Need to implement for Renderable template */
      void render();
      void renderLightMap();
      /* save the current values for mass, ttl, pos, spread, and vel */
      void save();
      /* reload the saved values for mass, ttl, pos, vel, spread, and matID */
      void revert();

   private:
      //Array of effect Particles
      std::vector<Particle> es;
      std::vector<Particle> p;
      bool on;
      float perSec;
      int numParticles;
      float time;
      float mass;
      float ttl;
      glm::vec3 pos;
      glm::vec3 vel;
      glm::vec3 spread;

      //Backup values
      int smat;
      float smass;
      float sttl;
      float sscaleX;
      float sscaleY;
      float sscaleZ;
      glm::vec3 spos;
      glm::vec3 sspread;
      glm::vec3 svel;

      /* calculates and sets net force for each Particle */
      void computeForces(std::vector<std::vector<Movable *> > gameGrid);//Movable* gameGrid[17][7]);
      /* generate lava globs */
      void sprayLava(glm::vec3 p, glm::vec3 v, int dir);
      /* generate sand particles */
      void spraySand(glm::vec3 p, glm::vec3 v, int dir);
      /* returns a random float from the range 0 to "of" */
      float randf(float of);
      /* returns a random float from the range "-of" to "of" */
      float srandf(float of);

      /* duplicate functions for effect particle system */
      void esAdd();
      void esBurst(int num);
};

#endif
