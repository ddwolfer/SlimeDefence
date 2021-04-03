/// @description Insert description here
// You can write your code in this editor
if(room != r_init && room != r_choiceColor){
	#region #範圍選取用
	if(rangeSelectActive){
		if( rangeFindFlag ){
			if(mouse_check_button_released(mb_left)){
				rangeFindFlag = false
			}
			draw_set_alpha(0.35)
			draw_rectangle_color(rangeFindStartX,rangeFindStartY,mouse_x,mouse_y,c_gray,c_gray,c_gray,c_gray,0)
			draw_set_alpha(1)
	
			var SlimeListTemp = ds_list_create()
			var SlimeListNum = collision_rectangle_list(rangeFindStartX,rangeFindStartY,mouse_x,mouse_y,oSlimeParent,0,1,SlimeListTemp,0)
			SlimeList = SlimeListTemp
	
			if(SlimeListNum > 0){
				for(var i = 0 ; i < SlimeListNum ; i++){
					if not(SlimeList[|i].Activate){
						SlimeList[|i].Activate = true
						SlimeList[|i].FusionTarget = 0
						Slime_ActivateCount++
					}
					show_debug_message("[oGame Draw]選取的史萊姆列表:"+string(SlimeList[|i]))
				}
			}

			ds_list_destroy(SlimeListTemp)
		}else{
			if(mouse_check_button_pressed(mb_left)){
				if not(collision_point(mouse_x, mouse_y, oSlimeParent, true, false)){
					rangeFindFlag = true
					rangeFindStartX = mouse_x
					rangeFindStartY = mouse_y
				}
			}
		}
	}
	#endregion
}