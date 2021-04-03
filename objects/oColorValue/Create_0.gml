/// @description Insert description here
// You can write your code in this editor
cursor_y = y + 255 - 210
pressed = false

upixelH = shader_get_uniform(shOutline, "pixelH")
upixelW = shader_get_uniform(shOutline, "pixelW")
texelW = 2*texture_get_texel_width(sprite_get_texture(sColorPicker, 0))
texelH = 2*texture_get_texel_height(sprite_get_texture(sColorPicker, 0))
//texelW 與 texelH 等號後的 1 是可以更改的常數，改成更大，外框就會變大

Color = function(r, g, b)constructor{
	red = r;
	green = g;
	blue = b;
	
	static toShaderValue = function(value){
		return value / 255;
	}
};