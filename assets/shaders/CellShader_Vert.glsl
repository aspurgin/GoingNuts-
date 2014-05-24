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

//Shadow variables
uniform mat4 uCasterProj;
uniform mat4 uCasterView;
varying vec4 st_shadow;
//End shadow variables

uniform vec3 lightPos;
uniform vec3 cameraPos;

varying vec4 normal;
varying vec4 light;
varying vec4 position;

void main() {
   vec4 lightPoint = vec4(lightPos, 1);
   vec4 vPosition;
   vec4 vNormal;

   //Compute shadow texture coord
   st_shadow = uCasterProj * uCasterView * uModelMatrix * vec4 (aPosition, 1.0);

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);
   position = vPosition;

   vNormal = uModelMatrix * vec4(aNormal.x, aNormal.y, aNormal.z, 0);
   vNormal = normalize(vNormal);

   light = lightPoint - vPosition;
   light = normalize(light);
   normal = vNormal;

   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;


}