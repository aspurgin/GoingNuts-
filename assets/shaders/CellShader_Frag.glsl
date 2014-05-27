struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform Material uMat;
uniform vec3 cameraPos;

//Shadow variables
varying vec4 st_shadow;
uniform sampler2D depth_map;
//End shadow variables

varying vec4 normal;
varying vec4 light;
varying vec4 position;

//Shadow helper function
float create_shadow (vec4 texture_coords) {
	float epsilon = 0.0;
	float shad = texture2D (depth_map, texture_coords.xy).r;

	if(shad + epsilon < texture_coords.z) {
		return 0.2;
	}

	return 1.0;
}

void main() {
   //shadow temporary vars
   vec4 shad_coord = st_shadow;
   float shadow_factor;
   float epsilon = 0.0;
   float myshad = 0.0;

   vec4 cameraPoint = vec4(cameraPos, 1);

   vec3 normalVec = vec3(normal.x, normal.y, normal.z);
   vec3 lightVec = vec3(light.x, light.y, light.z);
   vec3 positionVec = vec3(position.x, position.y, position.z);
   // Lighting
   vec3 eyePos = vec3(-cameraPoint.x, -cameraPoint.y, -cameraPoint.z);

   vec3 eyeVert = eyePos - positionVec;
   eyeVert = normalize(eyeVert);

   //Andy, I changed this. It used to be eyeVec - lightVec ..... but I think it's supposed to be lightVec - positionVec. Could be wrong
   //though. I'll let you do further lighting stuff to get looking right. --Drew
   vec3 lightVert = lightVec - positionVec;
   
   //Andy, this used to be normalize(lightVert), and I changed it to lightVec. We already calculated the light vector in
   //the vertex shader and I think it was interpolated, so we don't need to calculate it again. --Drew
   lightVert = normalize(lightVec);

   normalVec = normalize(normalVec);
   float angleBetweenCamera = dot(normalVec, eyeVert);
   float angleBetweenLight = dot(normalVec, lightVert);

   // Simple Silhouette
   // If angle is too drastic, color black
   if (max(angleBetweenCamera, 0.0) < 0.4) {
      // Silhouette Color:
      gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
   }
   else {
      // Base Color
      gl_FragColor = vec4(uMat.aColor, 1.0);

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
         gl_FragColor = vec4(uMat.sColor, 1.0);
      }
      // This adds color to based on if the angle
      // is not close enough to be the center and not far enough
      // to be the black outline
      if (max(angleBetweenLight, 0.0) < 0.2) {
         gl_FragColor *= 0.8;
      }
   }

   //shadow code
   //get the values between 0 and 1
   shad_coord.xyz /= shad_coord.w;
   shad_coord.xyz += 1.0;
   shad_coord.xyz *= 0.5;

   myshad = texture2D (depth_map, shad_coord.xy).r;

   if(myshad + epsilon < shad_coord.z) {
      shadow_factor =  0.2;
   }
   else {
      shadow_factor = 1.0;
   }

   gl_FragColor = vec4(gl_FragColor.x * shadow_factor, gl_FragColor.y * shadow_factor, gl_FragColor.z * shadow_factor, 1.0);
}
