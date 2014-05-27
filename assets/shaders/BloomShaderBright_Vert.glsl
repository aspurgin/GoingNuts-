attribute vec3 aPosition;

uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;


void main() {
   vec4 vPosition;

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);

   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;
}
