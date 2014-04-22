struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

attribute vec3 aPosition;
attribute vec3 aNormal;

uniform Material uMat;
uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;
uniform vec4 lightPos;
uniform vec4 cameraPos;
uniform vec3 lightColor;

varying vec4 normal;
varying vec4 light;
varying vec4 spec;
varying vec3 vColor;

void main() {
   vec4 vPosition;
   vec4 vNormal;
   vec3 Refl;
   float tempSpec;

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);

   vNormal = uModelMatrix * vec4(aNormal.x, aNormal.y, aNormal.z, 0);
   vNormal = normalize(vNormal);

   light = lightPos - vPosition;
   light = normalize(light);
   normal = vNormal;

   spec = normalize(cameraPos - vPosition);
   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;
}
