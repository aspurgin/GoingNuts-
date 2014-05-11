#include "OrthographicCamera.hpp"

OrthographicCamera::OrthographicCamera() {
   left = -10.0f;
   right = 10.0f;
   bottom = -10.0f;
   top = 10.0f;
   zNear = -10.0f;
   zFar = 10.0f;
}

void OrthographicCamera::setView(GLint viewHandle) {
   //glm::mat4 View = glm::ortho(-4.0f/3.0f, 4.0f/3.0f, -1.0f, 1.0f, -1.0f, 1.0f);
   //glm::mat4 View = glm::ortho(left, right, bottom, top, zNear, zFar);
   glm::mat4 View;
   safe_glUniformMatrix4fv(viewHandle, glm::value_ptr(View));
}

void OrthographicCamera::setProjectionMatrix(GLint projectionHandle) {
   //glm::mat4 Projection = glm::perspective(80.0f, (float)width / height, 0.1f, 100.f);
   glm::mat4 Projection = glm::ortho(-4.0f/3.0f, 4.0f/3.0f, -1.0f, 1.0f, -1.0f, 1.0f);
   safe_glUniformMatrix4fv(projectionHandle, glm::value_ptr(Projection));
}
