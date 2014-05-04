#version 120

struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform Material uMat;
uniform vec4 cameraPos;

varying vec4 normal;
varying vec4 light;
varying vec4 position;

void main() {
   // Lighting
   vec3 eyePos = vec3(cameraPos.x, cameraPos.y, cameraPos.z);

   vec3 eyeVert = normalize(eyePos - position);
   vec3 eyeLight = normalize(light + eyeVert);

   // Simple Silhouette
   if (max(dot(normal, eyeVert), 0.0) < 0.3) {
      // Silhouette Color:
      gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
   }
   else {
      // Material Color
      gl_FragColor = vec4(uMat.aColor, 1.0);

      // Specular part
      if (pow(max(dot(normal, eyeLight),0.0), uMat.shine) < 0.2) {
         gl_FragColor *= 0.8;
      }
      else {
         // Specular Color
         gl_FragColor = vec4(uMat.sColor, 1.0);
      }
      // Diffuse part
      if (max(dot(normal, light), 0.0) < 0.5) {
         gl_FragColor *= 0.8;
      }
   }
}
