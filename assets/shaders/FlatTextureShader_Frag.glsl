uniform sampler2D myTextureSampler;

varying vec2 UV;

void main() {
   vec4 texColor = texture2D(myTextureSampler, UV);
   gl_FragColor = texColor;
}
