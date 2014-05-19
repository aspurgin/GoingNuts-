attribute vec3 vp;
uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;

void main () {
  gl_Position = uProjMatrix * uViewMatrix * uModelMatrix * vec4 (vp, 1.0);
}