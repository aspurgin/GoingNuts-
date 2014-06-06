attribute vec3 aPosition;

uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;

varying vec4 bloomCoord;

void main() {
   vec4 vPosition;

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);

   vPosition = uViewMatrix * vPosition;
   bloomCoord = uProjMatrix * vPosition;

   gl_Position = bloomCoord;

   // bloomCoord = bloomCoord * 0.5 + 0.5;
}
