draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,
make_colour_hsv(colorHue, colorSaturation, 255), image_alpha)


//有陰影的游標
shader_set(shOutline)
shader_set_uniform_f(upixelW, texelW)
shader_set_uniform_f(upixelH, texelH)
draw_sprite_ext(sColorPicker, 0, x + sprite_width/2, cursor_y, 1, 1, 0, PaletteColor, 1);
shader_reset()