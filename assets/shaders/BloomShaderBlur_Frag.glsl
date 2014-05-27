// This is the blur pass

uniform sampler2D myTextureSampler;

varying vec4 bloomCoord;

const float blurSize = 1.0/300.0;
const float weightSum = 70.0 + 2.0 * (1.0 + 8.0 + 28.0 + 56.0);

void main() {
   vec4 bloomCoordLocal = bloomCoord;
   bloomCoordLocal.xyz /= bloomCoordLocal.w;
   bloomCoordLocal.xyz += 1.0;
   bloomCoordLocal.xyz *= 0.5;

   //vec3 colorOut = vec3(0.5, 0.2, 0.1);
   vec4 colorOut = vec4(0.0);

   // Sum all the colors with the texture color based off current pixel
   // and pixel color around it
   // Bottom
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x - 4.0*blurSize, bloomCoordLocal.y)) * 1.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x - 3.0*blurSize, bloomCoordLocal.y)) * 8.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x - 2.0*blurSize, bloomCoordLocal.y)) * 28.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x - blurSize, bloomCoordLocal.y)) * 56.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y)) * 70.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x + blurSize, bloomCoordLocal.y)) * 56.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x + 2.0*blurSize, bloomCoordLocal.y)) * 28.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x + 3.0*blurSize, bloomCoordLocal.y)) * 8.0 / weightSum;
   colorOut += texture2D(myTextureSampler, vec2(bloomCoordLocal.x + 4.0*blurSize, bloomCoordLocal.y)) * 1.0 / weightSum;

   // Set the average and render blur
   gl_FragColor = colorOut;
   //gl_FragColor = vec4(0.5, 0.2, 0.1, 1.0);
}
