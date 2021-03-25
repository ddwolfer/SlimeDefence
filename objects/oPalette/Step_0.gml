/// @description Insert description here
// You can write your code in this editor
PaletteColor = make_colour_hsv(colorHue, colorSaturation, colorValue)

colorHue = cursor_x - x;
colorSaturation = abs((cursor_y - y) - 255);

//1
if (mouse_check_button_pressed(mb_left)){
	if ((mouse_x >= x && mouse_x < x + 255) && (mouse_y >= y && mouse_y < y + 255))
		pressed = true;
}
//2
if (pressed){
	if (mouse_x >= x && mouse_x < x + 255) cursor_x = mouse_x;
	else if (mouse_x < x) cursor_x = x;
	else if (mouse_x >= x + 255) cursor_x = x + 254;

	if (mouse_y >= y && mouse_y < y + 255) cursor_y = mouse_y;
	else if (mouse_y < y) cursor_y = y;
	else if (mouse_y >= y + 255) cursor_y = y + 254;
}
//3
if (mouse_check_button_released(mb_left) && pressed){
	pressed = false;
}