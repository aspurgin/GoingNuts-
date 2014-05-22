#version 120

attribute vec3 aPosition;
attribute vec3 aNormal;
attribute vec2 vertexUV;
attribute vec3 aTangent;
attribute vec3 aBitangent;

uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;
uniform vec3 lightPos;

varying vec2 uv;
varying vec3 lightDirection_tangent;
varying vec3 viewDirection_tangent;

void main() {
   vec4 position_model = vec4(aPosition.x, aPosition.y, aPosition.z, 1);
   mat3 mv3x3 = mat3(uViewMatrix * uModelMatrix);
   mat4 mvp = uProjMatrix * uViewMatrix * uModelMatrix;

   //Calculate the eye direction in camera space
   vec3 position_camera = vec3(uViewMatrix * uModelMatrix * position_model);
   vec3 eyeDirection_camera = vec3(0,0,0) - position_camera;

   //Calculate the light direction in camera space
   vec3 lightPosition_camera = ( uViewMatrix * vec4(lightPos,1)).xyz;
   vec3 lightDirection_camera = lightPosition_camera + eyeDirection_camera;

   //Calculate the tangent, bitangent, and normal in camera space 
   vec3 tangent_camera = mv3x3 * aTangent;
   vec3 bitangent_camera = mv3x3 * aBitangent;
   vec3 normal_camera = mv3x3 * aNormal;

   //Make the tbn matrix and calculate the light and eye directions in tangent space
   mat3 tbn = transpose( mat3(tangent_camera, bitangent_camera, normal_camera) );
   lightDirection_tangent = tbn * lightDirection_camera;
   viewDirection_tangent =  tbn * eyeDirection_camera;

   uv = vertexUV;

   //Give the final position as one in clip space
   gl_Position = mvp * position_model;
}
