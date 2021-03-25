/// @description Insert description here
// You can write your code in this editor

Color = function(r, g, b)constructor{
	red = r;
	green = g;
	blue = b;
	
	static toShaderValue = function(value){
		return value / 255;
	}
};


ColorReplace = new Color(157,208,145)

sh_handle_range = shader_get_uniform(sh_ReplaceColor,"range")
sh_handle_replace = shader_get_uniform(sh_ReplaceColor,"colorReplace")