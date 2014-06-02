#ifndef __CAMERA_H
#define __CAMERA_H

#ifdef _WIN32
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <GL/glew.h>
#include "../helperFiles/GLSL_helper.h"
#endif
#ifdef __unix__
#include <glm/glm.hpp>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "../helperFiles/GLSL_helper.h"
#endif

#include <cstdlib>

class Camera {
public:
   glm::vec3 eye;
   glm::vec3 lookAt;
   glm::vec3 upVec;
   glm::vec3 wVector;
   glm::vec3 uVector;
   glm::vec3 vVector;
   
   bool shakeUp;
   bool isShaking;
   float delta;
   int shakeFrames;
   float maxDelta;
   Camera();
   Camera(glm::vec3, glm::vec3, glm::vec3);
   void shake(float);
   void setView(GLint);
   void setProjectionMatrix(GLint, float, float, float);
   void setEye(glm::vec3);
   void setPosition(glm::vec3);
   void setLookAt(glm::vec3);
   glm::vec3 getPosition();
private:
   bool goingLeft;
   bool goingRight;
   glm::vec3 velocity;
   glm::vec3 acceleration;

};

#endif
