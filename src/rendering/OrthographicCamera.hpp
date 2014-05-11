#ifndef __ORTHOGRAPHIC_CAMERA_HPP
#define __ORTHOGRAPHIC_CAMERA_HPP

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

class OrthographicCamera {
   public:
      float left;
      float right;
      float bottom;
      float top;
      float zNear;
      float zFar;

      OrthographicCamera();
      void setView(GLint);
      void setProjectionMatrix(GLint projectionHandle);
};

#endif
