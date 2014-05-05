struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform Material uMat;
uniform vec3 cameraPos;
uniform vec3 lightColor;

varying vec4 normal;
varying vec4 light;
varying vec4 spec;
varying vec3 vColor;

void main() {
   float tempSpec;
   vec3 Refl;
   vec4 fNormal = normalize(normal);
   vec4 fLight = normalize(light);

   Refl = lightColor * max(0.0, dot(fLight, fNormal)) * uMat.dColor + lightColor * uMat.aColor;
   tempSpec = dot(normalize(spec), normalize(-fLight + 2.0 * max(dot(fLight, fNormal), 0.0) * fNormal));
   Refl += lightColor * clamp(pow(tempSpec, uMat.shine), 0.0, 1.0) * uMat.sColor;
   gl_FragColor = vec4(Refl.x, Refl.y, Refl.z, 1.0);
}
