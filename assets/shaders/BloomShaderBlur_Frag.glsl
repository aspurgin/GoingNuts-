// This is the blur pass

uniform sampler2D myTextureSampler;
uniform vec2 pixelSize;

varying vec2 UV;

void main() {
   vec3 colourOut = vec3(0.0);

   // Create offsets to consider neighboring pixels
   vec2 offset[9] = vec2[](
      // Bottom
      vec2(-pixelSize.x, -pixelSize.y),
      vec2( 0.0, -pixelSize.y),
      vec2(pixelSize.x, -pixelSize.y),

      // Middle
      vec2(-pixelSize.x, 0.0),
      vec2( 0.0, 0.0),
      vec2(pixelSize.x, 0.0),

      //Top
      vec2(-pixelSize.x, pixelSize.y),
      vec2( 0.0, pixelSize.y),
      vec2(pixelSize.x, pixelSize.y)
   );

   // Sum all the colors with the texture color based off current pixel
   // and pixel color around it
   for (int i = 0; i < 9; i++ ) {
      colourOut += texture2D(myTextureSampler, UV + offset[i]).rgb;
   }

   // Set the average and render blur
   gl_FragColor.rgb = colourOut / 9.0;
}
