#include "CellShader.hpp"

CellShader::CellShader() {
}

void CellShader::setMaterial(int i) {
  glUseProgram(shadeProg);
  switch (i) {
    case 0:
      safe_glUniform3f(h_uMatAmb, 0.9, 0.88, 0.0);
      safe_glUniform3f(h_uMatDif, 1.0, 0.98, 0.02);
      safe_glUniform3f(h_uMatSpec, 0.8, 0.78, 0.0);
      safe_glUniform1f(h_uMatShine, 200.0);
      break;
    /*case 1:
      safe_glUniform3f(h_uMatAmb, 0.33, 0.0929, 0.0067);
      safe_glUniform3f(h_uMatDif, 0.53, 0.2929, 0.2067);
      safe_glUniform3f(h_uMatSpec, 0.43, 0.1929, 0.1067);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 2:
      safe_glUniform3f(h_uMatAmb, 0.58, 0.2979, 0.1964);
      safe_glUniform3f(h_uMatDif, 0.88, 0.5979, 0.1964);
      safe_glUniform3f(h_uMatSpec, 0.68, 0.3979, 0.2964);
      safe_glUniform1f(h_uMatShine, 10.0);
      break;
    case 3:
      safe_glUniform3f(h_uMatAmb, 0.56, 0.1589, 0.0064);
      safe_glUniform3f(h_uMatDif, 0.86, 0.3589, 0.2064);
      safe_glUniform3f(h_uMatSpec, 0.66, 0.2589, 0.1064);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;*/
    // case 1:
    //    safe_glUniform3f(h_uMatAmb, 0.6, 0.0, 0.0);
    //    safe_glUniform3f(h_uMatDif, 1, 0, 0);
    //    safe_glUniform3f(h_uMatSpec, 0.8, 0.0, 0.0);
    //    safe_glUniform1f(h_uMatShine, 4.0);
    //    break;
    // case 2:
    //    safe_glUniform3f(h_uMatAmb, 0.0, 0.2, 0.6);
    //    safe_glUniform3f(h_uMatDif, 0.3, 0.5, 0.4);
    //    safe_glUniform3f(h_uMatSpec, 0.0, 0.2, 0.8);
    //    safe_glUniform1f(h_uMatShine, 10.0);
    //    break;
    // case 3:
    //    safe_glUniform3f(h_uMatAmb, 0.0, 0.6, 0.0);
    //    safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
    //    safe_glUniform3f(h_uMatSpec, 0.0, 0.8, 0.0);
    //    safe_glUniform1f(h_uMatShine, 4.0);
    //    break;
    case 1:
       safe_glUniform3f(h_uMatAmb, 0.896, 0.308, 0.9);
       safe_glUniform3f(h_uMatDif, 0.996, 0.408, 1.0);
       safe_glUniform3f(h_uMatSpec, 0.796, 0.208, 0.8);
       safe_glUniform1f(h_uMatShine, 4.0);
       break;
    case 2:
       safe_glUniform3f(h_uMatAmb, 0.340, 0.225, 0.81);
       safe_glUniform3f(h_uMatDif, 0.440, 0.325, 0.91);
       safe_glUniform3f(h_uMatSpec, 0.240, 0.125, 0.71);
       safe_glUniform1f(h_uMatShine, 10.0);
       break;
    case 3:
       safe_glUniform3f(h_uMatAmb, 0.222, 0.622, 0.9);
       safe_glUniform3f(h_uMatDif, 0.322, 0.722, 1.0);
       safe_glUniform3f(h_uMatSpec, 0.122, 0.622, 0.9);
       safe_glUniform1f(h_uMatShine, 4.0);
       break;
    case 4:
      safe_glUniform3f(h_uMatAmb, 0.1, 0.1, 0.1);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.2, 0.2, 0.2);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 5:
      safe_glUniform3f(h_uMatAmb, 0.5, 0.2, 0.1);
      safe_glUniform3f(h_uMatDif, 0.2, 0.2, 0.2);
      safe_glUniform3f(h_uMatSpec, 0.6, 0.2, 0.1);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 7:
      safe_glUniform3f(h_uMatAmb, 0.7, 0.7, 0.7);
      safe_glUniform3f(h_uMatDif, 0.9, 0.9, 0.9);
      safe_glUniform3f(h_uMatSpec, 0.9, 0.9, 0.9);
      safe_glUniform1f(h_uMatShine, 4.0);
      break;
    case 8:
       safe_glUniform3f(h_uMatAmb, 0.8, 0.1, 0.0);
       safe_glUniform3f(h_uMatDif, 0.9, 0.2, 0.1);
       safe_glUniform3f(h_uMatSpec, 0.7, 0.0, 0.0);
       safe_glUniform1f(h_uMatShine, 4.0);
       break;
    case 9:
       safe_glUniform3f(h_uMatAmb, 1.0, 0.9, 0.4);
       safe_glUniform3f(h_uMatDif, 1.0, 0.9, 0.4);
       safe_glUniform3f(h_uMatSpec, 1.0, 0.9, 0.4);
       safe_glUniform1f(h_uMatShine, 100.0);
       break;
  }
}
