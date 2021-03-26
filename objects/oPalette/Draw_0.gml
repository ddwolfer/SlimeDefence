/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,make_colour_hsv(0, 0, colorValue), image_alpha)

shader_set(shOutline)
shader_set_uniform_f(upixelW, texelW)
shader_set_uniform_f(upixelH, texelH)
draw_sprite_ext(sColorPicker, 0, cursor_x, cursor_y, 1, 1, 0, PaletteColor, 1);
shader_reset()
