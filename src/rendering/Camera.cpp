#include "Camera.hpp"

Camera::Camera() {

}

Camera::Camera(glm::vec3 e, glm::vec3 lA, glm::vec3 up) {
   eye = e;//glm::vec3(3.0f, 1.0f, 10.0f);
   lookAt = lA;//glm::vec3(3.0f, 0.0f, 5.0f);
   upVec = up;//glm::vec3(0, 1, 0);
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

void Camera::shake() {

}

void Camera::setEye(glm::vec3 pos) {
   eye = pos;
   lookAt.z = pos.z - 15;
   lookAt.y = pos.y;// - 1;
}