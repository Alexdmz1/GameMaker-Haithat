//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.b = 250.0;
	gl_FragColor.r = 0.0;
	//gl_FragColor.r = 200.0;
	
}
