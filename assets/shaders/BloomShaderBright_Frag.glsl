// This is the bright pass

void main() {
   float luminance = 0.6;
   float middleGrey = 0.3;
   float threshold = 0.3;

   // Get the color without any alterations
   // vec3 color = texture2D(myTextureSampler, vec2(UV.x, 1.0 - UV.y)).rgb;
   vec3 color = vec3(0.5, 0.2, 0.1);

   // Adjust color based on grey scale and luminance
   color *= (middleGrey / luminance );
   // Amplify color to make everything bright
   color *= 1.0 + (color / (threshold * threshold));
   // Scale the color down to fit within 1.0
   color -= 0.5;
   // Scale color down again
   color /= (1.0 + color);

   // Render first bright pass with this color
   gl_FragColor.rgb = color;
   //gl_FragColor = vec4(0.5, 0.2, 0.1, 1.0);
}
