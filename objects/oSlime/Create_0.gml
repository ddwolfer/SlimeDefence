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

SlimeSize = oCreate_Slime_Button.SlimeSize

AttackRange = 120
AttackCooldown = true
AttackSpeed = room_speed*0.5