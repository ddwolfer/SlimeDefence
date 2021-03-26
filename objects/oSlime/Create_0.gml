/// @description Insert description here
// You can write your code in this editor
friction = 0.5
oGame.Slime_Count = oGame.Slime_Count + 1

Activate = false
ActivateRangeX = 10
ActivateRangeY = 12
Create_finish = false

enum State{
	idle = 0,
	move = 1,
	hurt = 2,
	death = 3,
	create = 4
}
State = State.create

upixelH = shader_get_uniform(shOutline, "pixelH")
upixelW = shader_get_uniform(shOutline, "pixelW")
texelW = 1*texture_get_texel_width(sprite_get_texture(sprite_index, 0))
texelH = 1*texture_get_texel_height(sprite_get_texture(sprite_index, 0))

targetX = x
targetY = y
targetDeviation = 3
moveSpeed = 3

SlimeSize = oCreateSlimeButton.SlimeSize

AttackRange = 120
AttackCooldown = true
AttackSpeed = room_speed*0.5

#region //shader
Color = function(r, g, b)constructor{
	red = r;
	green = g;
	blue = b;
	
	static toShaderValue = function(value){
		return value / 255;
	}
};

SlimeColorReplace = new Color(color_get_red(Player_Slime_color),color_get_green(Player_Slime_color),color_get_blue(Player_Slime_color))
sh_handle_range = shader_get_uniform(sh_ReplaceSlimeColor,"range")
sh_handle_replace = shader_get_uniform(sh_ReplaceSlimeColor,"colorReplace")
#endregion