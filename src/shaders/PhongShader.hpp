#ifdef __APPLE__
#include "GLUT/glut.h"
#include <OPENGL/gl.h>
#endif

#ifdef __unix__
#include <GL/glut.h>
#endif

#ifdef _WIN32
#pragma comment(lib, "glew32.lib")

#include <GL\glew.h>
#include <GL\glut.h>
#endif

#include <iostream>
#include <cstdio>
#include <cstdlib>

class PhongShader {
   public:
      GLint h_aPosition;
      GLint h_aNormal;
      GLint h_uModelMatrix;
      GLint h_uViewMatrix;
      GLint h_uProjMatrix;
      GLint h_lightPos;
      GLint h_cameraPos;
      GLint h_uMatAmb;
      GLint h_uMatDif;
      GLint h_uMatSpec;
      GLint h_uMatShine;
      int shadeProg;

      PhongShader();
      void setMaterial(int);
};
