struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform Material uMat;
uniform vec3 cameraPos;
uniform sampler2D myTextureSampler;

varying vec4 normal;
varying vec4 light;
varying vec4 position;
varying vec2 UV;

void main() {
   vec4 cameraPoint = vec4(cameraPos, 1);

   vec3 normalVec = vec3(normal.x, normal.y, normal.z);
   vec3 lightVec = vec3(light.x, light.y, light.z);
   vec3 positionVec = vec3(position.x, position.y, position.z);
   // Lighting
   vec3 eyePos = vec3(-cameraPoint.x, -cameraPoint.y, -cameraPoint.z);

   vec3 eyeVert = eyePos - positionVec;
   eyeVert = normalize(eyeVert);

   vec3 lightVert = eyePos - lightVec;
   lightVert = normalize(lightVert);

   normalVec = normalize(normalVec);
   float angleBetweenCamera = dot(normalVec, eyeVert);
   float angleBetweenLight = dot(normalVec, lightVert);
   //Needed to flip v coordinate because SOIL inverts the texture
   vec4 texColor = texture2D(myTextureSampler, vec2(UV.x, 1.0f-UV.y));

   // Simple Silhouette
   // If angle is too drastic, color black
   if (max(angleBetweenCamera, 0.0) < 0.4) {
      // Silhouette Color:
      //gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
      gl_FragColor = texColor * 0.4f;
   }
   else {
      // Base Color
      gl_FragColor = texColor;

      // ASSUMPTION: Angle between normal and eye > .4
      // If that angle taken to the power of 20
      // is less than .4, that means it is closer to the center
      // Where specular should show, amp up the color
      if (pow(max(angleBetweenLight, 0.0), 20) < 0.4) {
         gl_FragColor *= 0.8;
      }
      // ELSE the angle even after taken to the power of 20
      // is close enough to the acceptable center angle
      // that the color is going to just be the specular color
      else {
         //just the glFragColor
      }
      // This adds color to based on if the angle
      // is not close enough to be the center and not far enough
      // to be the black outline
      if (max(angleBetweenLight, 0.0) < 0.2) {
         gl_FragColor *= 0.6;
      }
   }
   gl_FragColor = texColor;
}
