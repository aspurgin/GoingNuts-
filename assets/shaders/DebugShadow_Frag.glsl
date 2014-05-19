varying vec2 st;
uniform sampler2D depth_tex;

void main () {
  float d = texture2D (depth_tex, st).r;
  gl_FragColor = vec4 (d, d, d, 1.0);
}