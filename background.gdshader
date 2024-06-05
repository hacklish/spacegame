shader_type canvas_item;

// TODO prepared for space distorsion or explosion
uniform vec2 center;
//uniform float size;
uniform float force;
//uniform float thickness;

void fragment() {
	// Called for every pixel the material is visible on.
	float ratio = SCREEN_PIXEL_SIZE.x / SCREEN_PIXEL_SIZE.y;
	vec2 halve = vec2(0.5, 0.0);
	vec2 scaled_uv = (SCREEN_UV - halve) / vec2(ratio, 1.0) + halve;
	
	//float mask = smoothstep(size - 0.1, size, length(scaled_uv - center));
	//float mask = (1.0 - smoothstep(size - 0.1, size, length(scaled_uv - center)))
	//	* smoothstep(size - thickness - 0.1, size - thickness, length(scaled_uv - center));
	
	vec2 disp = normalize(scaled_uv - center) * force;

	COLOR = vec4(SCREEN_UV - disp, 0.0, 1.0);
	//COLOR = texture(TEXTURE, SCREEN_UV - disp);
	//COLOR.rgb = vec3(mask);
}
