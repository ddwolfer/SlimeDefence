/// @description Insert description here
// You can write your code in this editor
if( abs(x-FinalPosiionX)<5 and abs(y==FinalPosiionY)<5 and TargetDie){
	instance_destroy(id)
}

if( bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height){
	instance_destroy(id, false);
}

draw_self()