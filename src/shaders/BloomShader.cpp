#include "BloomShader.hpp"

BloomShader::BloomShader() {
}

void BloomShader::setBase(int i) {
  glUseProgram(shadeProgBright);
  switch (i) {
    // Hard Hat
    case 0:
      safe_glUniform3f(h_uBase, 0.6, 0.6, 0.0);
      break;
    // Nuts
    case 5:
      safe_glUniform3f(h_uBase, 0.8, 0.2, 0.1);
      break;
    // Dynamite
    case 6:
      safe_glUniform3f(h_uBase, 0.6, 0.0, 0.0);
      break;
  }
}

void BloomShader::setMaterial(int i) {
  glUseProgram(shadeProgComposite);
  switch (i) {
    case 0:
      safe_glUniform3f(h_uMatAmb, 0.6, 0.6, 0.0);
      safe_glUniform3f(h_uMatDif, 0.97, 0.97, 0.0);
      safe_glUniform3f(h_uMatSpec, 0.7, 0.7, 0.0);
      safe_glUniform1f(h_uMatShine, 200.0);
      break;
    case 1:
      safe_glUniform3f(h_uMatAmb, 0.6, 0.0, 0.0);
      safe_glUniform3f(h_uMatDif, 1, 0, 0);
      safe_glUniform3f(h_uMatSpec, 0.8, 0.0, 0.0);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 2:
      safe_glUniform3f(h_uMatAmb, 0.0, 0.2, 0.6);
      safe_glUniform3f(h_uMatDif, 0.3, 0.5, 0.4);
      safe_glUniform3f(h_uMatSpec, 0.0, 0.2, 0.8);
      safe_glUniform1f(h_uMatShine, 10.0);
      break;
    case 3:
      safe_glUniform3f(h_uMatAmb, 0.0, 0.6, 0.0);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.0, 0.8, 0.0);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 4:
      safe_glUniform3f(h_uMatAmb, 0.1, 0.1, 0.1);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.2, 0.2, 0.2);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 5:
      safe_glUniform3f(h_uMatAmb, 0.8, 0.2, 0.1);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.6, 0.2, 0.1);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 6:
       safe_glUniform3f(h_uMatAmb, 0.6, 0.0, 0.0);
       safe_glUniform3f(h_uMatDif, 1, 0, 0);
       safe_glUniform3f(h_uMatSpec, 0.8, 0.0, 0.0);
       safe_glUniform1f(h_uMatShine, 4.0);
       break;
  }
}