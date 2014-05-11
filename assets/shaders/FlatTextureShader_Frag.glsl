varying vec2 UV;
uniform sampler2D myTextureSampler;

void main(){
	//Needed to flip v coordinate because SOIL inverts the texture
	gl_FragColor = texture2D(myTextureSampler, vec2(UV.x, 1.0f-UV.y)); 
}