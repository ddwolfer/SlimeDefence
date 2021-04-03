/// @description Insert description here
// You can write your code in this editor
TitleFont=font_add("NotoSansMonoCJKtcBold.otf",40 ,0 ,0 ,0 ,65535)
Color = function(r, g, b)constructor{
	red = r;
	green = g;
	blue = b;
	
	static toShaderValue = function(value){
		return value / 255;
	}
};

enum ShowState{
	idle = 0,
	move = 1,
	hurt = 2,
	death = 3
}
ShowState = ShowState.idle

ColorReplace = new Color(157,208,145)

sh_handle_range = shader_get_uniform(sh_ReplaceSlimeColor,"range")
sh_handle_replace = shader_get_uniform(sh_ReplaceSlimeColor,"colorReplace")

