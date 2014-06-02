#include "Camera.hpp"

Camera::Camera() {

}

Camera::Camera(glm::vec3 e, glm::vec3 lA, glm::vec3 up) {
   eye = e;//glm::vec3(3.0f, 1.0f, 10.0f);
   lookAt = lA;//glm::vec3(3.0f, 0.0f, 5.0f);
   upVec = up;//glm::vec3(0, 1, 0);
   isShaking = false;
   shakeUp = true;
   velocity = glm::vec3(0);
   acceleration = glm::vec3(0);
   goingLeft = false;
   goingRight = false;
}

void Camera::setView(GLint  viewHandle) {
   glm::mat4 View = glm::lookAt(eye, lookAt, upVec);
   //   glm::mat4 View = glm::lookAt(glm::vec3(0, 0, 0), glm::vec3(vx, vy, vz), glm::vec3(0, 1, 0)); 
   safe_glUniformMatrix4fv(viewHandle, glm::value_ptr(View));
}

void Camera::setProjectionMatrix(GLint projectionHandle, float ratio, float near, float far) {
   glm::mat4 Projection = glm::perspective(45.0f, ratio, near, far);//0.1f, 100.f);
   safe_glUniformMatrix4fv(projectionHandle, glm::value_ptr(Projection));
}

void Camera::shake(float max) {
   isShaking = true;
   shakeFrames = 0;
   delta = 0;
   maxDelta = max;
}

void Camera::setEye(glm::vec3 pos) {
   eye = pos;

   /*float delta = eye.x - pos.x;
   float absDelta = std::fabs(delta);
   if (!goingRight && !goingLeft && absDelta > 5.0) {
      if (delta < 0) {
         velocity.x = 0.25;
         goingRight = true;
         goingLeft = false;
      }
      else if (delta > 0) {
         velocity.x = -0.25;
         goingLeft = true;
         goingRight = false;
      }
   }
   else if (goingRight) {
      goingLeft = false;
      velocity.x -= 0.01;
      eye.x += velocity.x;
      if (velocity.x < 0) {
         eye.x = pos.x;
         goingRight = false;
         
      }
   }
   else if (goingLeft) {
      goingRight = false;
      velocity.x += 0.01;
      eye.x += velocity.x;
      if (velocity.x > 0) {
         eye.x = pos.x;
         goingLeft = false;
         
      }
   }
   eye.y = pos.y;
   eye.z = pos.z;*/
  
   if(isShaking) {
      shakeFrames++;
      eye.y += delta;
      lookAt.y += delta;
      if(shakeUp) {
         delta += 0.1;
      }
      else {
         delta -= 0.1;
      } 
      if(delta > maxDelta) {
         shakeUp = false;
      }
      else if(delta < -maxDelta) {
         shakeUp = true;
      }
      if(shakeFrames > 30) {
         isShaking = false;
      }
   }
   //lookAt.z = pos.z - 15;//15;
   lookAt.y = pos.y;// - 1;
}

void Camera::setLookAt(glm::vec3 pos) {
   lookAt = pos;
}

void Camera::setPosition(glm::vec3 pos) {
   eye = pos;
   lookAt.z = pos.z - 15;//15;
   lookAt.y = pos.y;// - 1;  
}

glm::vec3 Camera::getPosition() {
   return eye;
}