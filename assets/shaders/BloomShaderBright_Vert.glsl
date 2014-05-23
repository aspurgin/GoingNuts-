attribute vec3 aPosition;
attribute vec2 vertexUV;

uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;

varying vec2 UV;

void main() {
   vec4 vPosition;

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);
   position = vPosition;

   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;
   UV = vertexUV;
}
