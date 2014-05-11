struct Material {
  vec3 aColor;
  vec3 dColor;
  vec3 sColor;
  float shine;
};

attribute vec3 aPosition;
attribute vec3 aNormal;
attribute vec2 vertexUV;

uniform Material uMat;
uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;
uniform vec3 lightPos;
uniform vec3 cameraPos;

varying vec4 normal;
varying vec4 light;
varying vec4 position;
varying vec2 UV;

void main() {
   vec4 lightPoint = vec4(lightPos, 1);
   vec4 vPosition;
   vec4 vNormal;

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);
   position = vPosition;

   vNormal = uModelMatrix * vec4(aNormal.x, aNormal.y, aNormal.z, 0);
   vNormal = normalize(vNormal);

   light = lightPoint - vPosition;
   light = normalize(light);
   normal = vNormal;

   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;
   UV = vertexUV;
}
