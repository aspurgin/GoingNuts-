struct Material {
  vec3 aColor;
  vec3 dColor;
  vec3 sColor;
  float shine;
};

attribute vec3 aPosition;
attribute vec3 aNormal;
/*attribute vec3 aTangent;
attribute vec3 aBitangent;
attribute vec2 vertexUV;*/

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

/*varying vec3 lightDirection_tangent;
varying vec3 viewDirection_tangent;*/

void main() {
   vec4 lightPoint = vec4(lightPos, 1);
   vec4 vPosition;
   vec4 vNormal;
   //mat3 mv3x3 = mat3(uViewMatrix * uModelMatrix);

   //Compute shadow texture coord
   st_shadow = uCasterProj * uCasterView * uModelMatrix * vec4 (aPosition, 1.0);

   vPosition = uModelMatrix * vec4(aPosition.x, aPosition.y, aPosition.z, 1);
   position = vPosition;


   vNormal = uModelMatrix * vec4(aNormal.x, aNormal.y, aNormal.z, 0);
   vNormal = normalize(vNormal);

   //Calculate the eye direction in camera space
   /*vec3 position_camera = vec3(uViewMatrix * vPosition);
   vec3 eyeDirection_camera = vec3(0,0,0) - position_camera;

   //Calculate the light direction in camera space
   vec3 lightPosition_camera = ( uViewMatrix * lightPoint).xyz;
   vec3 lightDirection_camera = lightPosition_camera + eyeDirection_camera;

   //Calculate the tangent, bitangent, and normal in camera space 
   vec3 tangent_camera = mv3x3 * aTangent;
   vec3 bitangent_camera = mv3x3 * aBitangent;
   vec3 normal_camera = mv3x3 * aNormal;

   //Make the tbn matrix and calculate the light and eye directions in tangent space
   mat3 tbn = transpose( mat3(tangent_camera, bitangent_camera, normal_camera) );
   lightDirection_tangent = tbn * lightDirection_camera;
   viewDirection_tangent =  tbn * eyeDirection_camera;

   uv = vertexUV;*/


   light = lightPoint - vPosition;
   light = normalize(light);
   normal = vNormal;

   vPosition = uViewMatrix * vPosition;
   gl_Position = uProjMatrix * vPosition;


}