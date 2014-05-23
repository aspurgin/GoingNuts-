// This is the bright pass

uniform sampler2D myTextureSampler;

varying vec2 UV;

float luminance;
float middleGrey;
float threshold;

void main() {
   // Get the color without any alterations
   vec3 color = texture2D(myTextureSampler, vec2(UV.x, 1.0 - UV.y)).rgb;

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
}
