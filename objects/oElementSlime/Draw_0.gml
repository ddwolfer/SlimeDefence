/// @description Insert description here
// You can write your code in this editor

if(FusionFlag){
	draw_line_width_color(x,y-(sprite_height/4),mouse_x, mouse_y, 2,c_blue,c_blue)
	draw_sprite_ext(sSelectSlimeCursor,0,x,y-(sprite_height/5),1,1,mb_leftPressCount%90,-1,1)
	
	if(collision_point(mouse_x, mouse_y,oSlime,false,true)){
		var fusionTargetTemp = instance_nearest(mouse_x, mouse_y,oSlime) 
		draw_sprite_ext(sSelectSlimeCursor,0,fusionTargetTemp.x,fusionTargetTemp.y-(fusionTargetTemp.sprite_height/5),1,1,mb_leftPressCount%90,-1,1)
		FusionTarget = fusionTargetTemp
		gotoFusion = true
	}else{
		FusionTarget = 0
		gotoFusion = false
	}
}

event_inherited()

