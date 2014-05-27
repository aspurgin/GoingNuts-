#version 120

struct Material {
   vec3 aColor;
   vec3 dColor;
   vec3 sColor;
   float shine;
};

uniform vec3 lightColor;
uniform sampler2D colorTextureSampler;
uniform sampler2D normalTextureSampler;
uniform Material uMat;

varying vec3 lightDirection_tangent;
varying vec3 viewDirection_tangent;
varying vec2 uv;

void main() {
   // Get the color from the texture and calculate the ambient, diffuse, and
   // specular colors
   /*vec3 textureColor = vec3(texture2D(colorTextureSampler, uv));
   vec3 ambientColor = textureColor * 0.3;
   vec3 diffuseColor = textureColor * 1.0;
   vec3 specularColor = textureColor * 1.0;
   float shine = 2.0;
*/
   vec3 ambientColor = uMat.aColor;
   vec3 diffuseColor = uMat.dColor;
   vec3 specularColor = uMat.sColor;
   float shine = uMat.shine;

   // Calculate the normal from the texture map
   vec3 textureNormalValue = vec3( texture2D( normalTextureSampler, uv ) );
   vec3 textureNormal_tangent = normalize(textureNormalValue * 2.0 - 1.0);

   // Calculate the ambient color 
   vec3 ambient = lightColor * ambientColor;

   // Calculate the diffuse color
   vec3 n = textureNormal_tangent;
   vec3 l = normalize(lightDirection_tangent);
   float nDotL = clamp( dot(n,l), 0.0, 1.0 );
   vec3 diffuse = lightColor * diffuseColor * nDotL;

   // Calculate the specular color
   vec3 v = normalize(viewDirection_tangent);
   vec3 r = -l + 2.0 * nDotL * n;
   float vDotR = clamp( dot(v,r), 0,1 );
   vec3 specular = lightColor * specularColor * pow(vDotR,shine);

   // Combine the ambient, diffuse, and specular components to get the final 
   // color
   gl_FragColor.rgb = ambient + diffuse + specular;
}
