uniform sampler2D myTextureSampler;

varying vec2 UV;

void main() {
   vec4 texColor = texture2D(myTextureSampler, vec2(UV.x, 1.0f-UV.y));
   gl_FragColor = texColor;
}
