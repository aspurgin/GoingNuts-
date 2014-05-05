struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform Material uMat;
uniform vec3 cameraPos;

varying vec4 normal;
varying vec4 light;
varying vec4 position;

void main() {
   vec4 cameraPoint = vec4(cameraPos, 1);

   vec3 normalVec = vec3(normal.x, normal.y, normal.z);
   vec3 lightVec = vec3(light.x, light.y, light.z);
   vec3 positionVec = vec3(position.x, position.y, position.z);
   // Lighting
   vec3 eyePos = vec3(-cameraPoint.x, -cameraPoint.y, -cameraPoint.z);

   vec3 eyeVert = eyePos - positionVec;
   eyeVert = normalize(eyeVert);

   vec3 eyeLight = lightVec + eyeVert;
   eyeLight = normalize(eyeLight);

   normalVec = normalize(normalVec);
   // Simple Silhouette
   if (max(dot(normalVec, eyeVert), 0.0) < 0.4) {
      // Silhouette Color:
      gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
   }
   else {
      // Material Color
      gl_FragColor = vec4(uMat.aColor, 1.0);

      // Specular part
      if (pow(max(dot(normalVec, eyeLight),0.0), 20) < 0.3) {
         gl_FragColor *= 0.8;
      }
      else {
         // Specular Color
         gl_FragColor = vec4(uMat.sColor, 1.0);
      }
      // Diffuse part
      if (max(dot(normalVec, lightVec), 0.0) < 0.5) {
         gl_FragColor *= 0.8;
      }
   }
}
