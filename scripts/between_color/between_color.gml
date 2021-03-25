// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function between_color(colorRGBValue){
	if(colorRGBValue > 255)	return 255
	if(colorRGBValue <= 0) return 0
	return colorRGBValue
}