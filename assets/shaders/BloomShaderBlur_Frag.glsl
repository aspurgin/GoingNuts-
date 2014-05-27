// This is the blur pass

uniform sampler2D myTextureSampler;

varying vec4 bloomCoord;

void main() {
   vec4 bloomCoordLocal = bloomCoord;
   bloomCoordLocal.xyz /= bloomCoordLocal.w;
   bloomCoordLocal.xyz += 1.0;
   bloomCoordLocal.xyz *= 0.5;

   //vec3 colorOut = vec3(0.5, 0.2, 0.1);
   vec3 colorOut = vec3(0.0);

   // Sum all the colors with the texture color based off current pixel
   // and pixel color around it
   // Bottom
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(-3.0, -3.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(0.0, -3.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(3.0, -3.0)).rgb;

   // Middle
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(-3.0, 0.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(0.0, 0.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(3.0, 0.0)).rgb;

   // Top
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(-3.0, 3.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(0.0, 3.0)).rgb;
   colorOut += texture2D(myTextureSampler, bloomCoordLocal.st + vec2(3.0, 3.0)).rgb;

   // Set the average and render blur
   //gl_FragColor.rgb = colorOut / 9.0;
   gl_FragColor = vec4(0.5, 0.2, 0.1, 1.0);
}
