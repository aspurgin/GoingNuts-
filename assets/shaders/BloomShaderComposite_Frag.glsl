// This is the last pass
// This shader combines the texture color of the scene
// With the bloom calculated in previous shader passes

uniform sampler2D input_scene;
uniform sampler2D input_bloom;

varying vec2 UV;

void main() {
   vec3 colorA = texture2D(input_scene, vec2(UV.x, 1.0 - UV.y)).rgb;
   vec3 colorB = texture2D(input_bloom, vec2(UV.x, 1.0 - UV.y)).rgb;
   gl_FragColor.rgb = 1.0 - (1.0 - colorA) * (1.0 - colorB);
}
