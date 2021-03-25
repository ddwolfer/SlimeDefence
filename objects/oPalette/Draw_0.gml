/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,make_colour_hsv(0, 0, colorValue), image_alpha)

shader_set(shOutline)
shader_set_uniform_f(upixelW, texelW)
shader_set_uniform_f(upixelH, texelH)
draw_sprite_ext(sColorPicker, 0, cursor_x, cursor_y, 1, 1, 0, PaletteColor, 1);
shader_reset()

/*
//if( keyboard_check_pressed(vk_enter) ){
	var origin_width = sprite_get_width(sSlime_pope_pal)
	var origin_height = sprite_get_height(sSlime_pope_pal)
	var surfSlime = surface_create(origin_width+1, origin_height )
	
	var new_red = color_get_blue(PaletteColor)
	var new_green = color_get_blue(PaletteColor)
	var new_blue = color_get_blue(PaletteColor)
	
	show_debug_message("原始圖像"+string(sprite_get_width(sSlime_pope_pal))+":"+string(sprite_get_height(sSlime_pope_pal)))

	surface_set_target(surfSlime)
	draw_clear_alpha(c_black, 1)
	#region //new slime
		draw_point_color(origin_width, 0, c_black)
		draw_point_color(origin_width, 1, make_color_rgb(between_color(new_red*0.6), between_color(new_green*0.76), between_color(new_blue*0.55) ))
		draw_point_color(origin_width, 2, PaletteColor)
		draw_point_color(origin_width, 3, make_color_rgb(between_color(new_red*1.31), between_color(new_green*1.15), between_color(new_blue*1.37) ))
	#endregion
	draw_sprite(sSlime_pope_pal,0,0,0)
	
	var spr_custom = sprite_create_from_surface(surfSlime,0,0,surface_get_width(surfSlime),surface_get_height(surfSlime),true,true,0,0)
	show_debug_message("儲存圖像"+string(surface_get_width(surfSlime))+":"+string(surface_get_height(surfSlime)))
	draw_sprite_ext(spr_custom,0,1,1,50,50,0,-1,1)
	surface_reset_target()
	surface_free(surfSlime)
	
	sprite_save(spr_custom, 0,"Slime_Custom_Sprite.png")
	
	sprite_delete(spr_custom)


	show_debug_message("儲存新檔案")
//}
*/