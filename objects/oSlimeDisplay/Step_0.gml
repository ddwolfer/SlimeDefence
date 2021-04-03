/// @description Insert description here
// You can write your code in this editor

//ColorReplace = new Color(color_get_red(PaletteColor),color_get_green(PaletteColor),color_get_blue(PaletteColor))
switch(ShowState){
	case 0:
		sprite_index = sSlime_idle
		break
	case 1:
		sprite_index = sSlime_move
		break
	case 2:
		sprite_index = sSlime_hurt
		break
	case 3:
		sprite_index = sSlime_death
		break
}