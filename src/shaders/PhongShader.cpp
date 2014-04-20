#include "PhongShader.hpp"

/**
* Default Constructor
* This will call setLights for initial setup
*/
PhongShader::PhongShader() {
}

/**
* @param i an int between 0-3, sends the material info to shaders
*/
void PhongShader::setMaterial(int i) {
  glUseProgram(shadeProg);
  switch (i) {
    case 0:
      safe_glUniform3f(h_uMatAmb, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatDif, 0.97, 0.77, 0.1);
      safe_glUniform3f(h_uMatSpec, 0.4, 0.4, 0.4);
      safe_glUniform1f(h_uMatShine, 200.0);
      break;
    case 1:
      safe_glUniform3f(h_uMatAmb, 0.13, 0.13, 0.14);
      safe_glUniform3f(h_uMatDif, 1, 0, 0);
      safe_glUniform3f(h_uMatSpec, 0.3, 0.3, 0.4);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 2:
      safe_glUniform3f(h_uMatAmb, 0.2, 0.4, 0.6);
      safe_glUniform3f(h_uMatDif, 0.3, 0.5, 0.4);
      safe_glUniform3f(h_uMatSpec, 0.6, 0.3, 0.4);
      safe_glUniform1f(h_uMatShine, 10.0);
      break;
    case 3:
      safe_glUniform3f(h_uMatAmb, 0.1, 0.9, 0.1);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.4, 0.4, 0.4);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
  }
}
