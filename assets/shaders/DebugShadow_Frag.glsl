varying vec2 st;
uniform sampler2D depth_tex;

void main () {
  vec3 d = texture2D (depth_tex, st).rgb;
  gl_FragColor = vec4 (d, 1.0);
}