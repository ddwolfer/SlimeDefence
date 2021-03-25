/// @description Insert description here
// You can write your code in this editor
//init globalvars
globalvar colorHue, colorSaturation, colorValue, PaletteColor;
colorHue = 0;
colorSaturation = 255;
colorValue = 255;
PaletteColor = make_colour_hsv(colorHue, colorSaturation, colorValue)


//init vars
cursor_x = x;
cursor_y = y;
pressed = false;

upixelH = shader_get_uniform(shOutline, "pixelH")
upixelW = shader_get_uniform(shOutline, "pixelW")
texelW = 2*texture_get_texel_width(sprite_get_texture(sColorPicker, 0))
texelH = 2*texture_get_texel_height(sprite_get_texture(sColorPicker, 0))
//texelW 與 texelH 等號後的 1 是可以更改的常數，改成更大，外框就會變大

#region //初始的史萊姆顏色
/*
var initSurfSlime = surface_create(sprite_get_width(sSlime_pope_pal)+1, sprite_get_height(sSlime_pope_pal) )
surface_set_target(initSurfSlime)
draw_clear_alpha(c_black, 0)
draw_sprite(sSlime_pope_pal,0,0,0)
draw_sprite(sSlime_pope_pal,0,sprite_get_width(sSlime_pope_pal),0)
var spr_custom = sprite_create_from_surface(initSurfSlime,0,0,surface_get_width(initSurfSlime),surface_get_height(initSurfSlime),true,true,0,0)
surface_reset_target()
sprite_save(spr_custom, 0,"Slime_Custom_Sprite.png")
sprite_delete(spr_custom)
show_debug_message("儲存新檔案")*/
#endregion