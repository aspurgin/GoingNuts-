uniform sampler2D myTextureSampler;
varying vec4 bloomCoord;
 
const float blurSize = 1.0/256.0;
 
void main() {
   vec4 bloomCoordLocal = bloomCoord;
   bloomCoordLocal.xyz /= bloomCoordLocal.w;
   bloomCoordLocal.xyz += 1.0;
   bloomCoordLocal.xyz *= 0.5;

   vec4 sum = vec4(0.0);
 
   // blur in y (vertical)
   // take nine samples, with the distance blurSize between them
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y - 4.0*blurSize)) * 0.05;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y - 3.0*blurSize)) * 0.09;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y - 2.0*blurSize)) * 0.12;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y - blurSize)) * 0.15;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y)) * 0.16;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y + blurSize)) * 0.15;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y + 2.0*blurSize)) * 0.12;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y + 3.0*blurSize)) * 0.09;
   sum += texture2D(myTextureSampler, vec2(bloomCoordLocal.x, bloomCoordLocal.y + 4.0*blurSize)) * 0.05;
 
   gl_FragColor = sum;
}
