/// @description Insert description here
// You can write your code in this editor
oGame.Slime_Count = oGame.Slime_Count + 1

Activate = false


upixelH = shader_get_uniform(shOutline, "pixelH")
upixelW = shader_get_uniform(shOutline, "pixelW")
texelW = 1*texture_get_texel_width(sprite_get_texture(sprite_index, 0))
texelH = 1*texture_get_texel_height(sprite_get_texture(sprite_index, 0))
