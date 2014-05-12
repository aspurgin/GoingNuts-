#include "Camera.hpp"

Camera::Camera() {
   eye = glm::vec3(3.0f, 1.0f, 10.0f);
   lookAt = glm::vec3(3.0f, 0.0f, 5.0f);
   upVec = glm::vec3(0, 1, 0);
}

void Camera::setView(GLint  viewHandle) {
   glm::mat4 View = glm::lookAt(eye, lookAt, upVec);
   //   glm::mat4 View = glm::lookAt(glm::vec3(0, 0, 0), glm::vec3(vx, vy, vz), glm::vec3(0, 1, 0)); 
   safe_glUniformMatrix4fv(viewHandle, glm::value_ptr(View));
}

void Camera::setProjectionMatrix(GLint projectionHandle, int width, int height) {
   glm::mat4 Projection = glm::perspective(80.0f, (float)width / height, 0.1f, 100.f);
   safe_glUniformMatrix4fv(projectionHandle, glm::value_ptr(Projection));
}

void Camera::shake() {

}

void Camera::setEye(glm::vec3 pos) {
   eye = pos;
   lookAt.z = pos.z - 5;
   lookAt.y = pos.y - 1;
}