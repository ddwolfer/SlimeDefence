/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
colorValue = abs((cursor_y - y) - 255)

if (mouse_check_button_pressed(mb_left)){
	if ((mouse_x >= x && mouse_x < x + sprite_width) && (mouse_y >= y && mouse_y < y + 255))
		pressed = true
}

if (pressed){
	if (mouse_y >= y && mouse_y < y + 255) cursor_y = mouse_y
		else if (mouse_y < y) cursor_y = y
		else if (mouse_y >= y + 255) cursor_y = y + 254
}
if (mouse_check_button_released(mb_left) && pressed){
	pressed = false
}