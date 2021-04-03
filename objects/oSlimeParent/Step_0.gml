/// @description Insert description here
// You can write your code in this editor
getInput()

depth = -y

if(Create_finish){
	
	#region //抵達目的地
	if( (abs(targetX - x)<targetDeviation) and (abs(targetY - y)<targetDeviation) ){
		targetX = x
		targetY = y
		FusionTarget = 0
		State = State.idle
	}
	#endregion
	
	#region //左鍵點擊觸發用
	if(not Activate){
		if mouse_check_button_pressed(mb_left) {
			if( (mouse_x > x - ActivateRangeX and mouse_x < x + ActivateRangeX) and ( mouse_y <= y and mouse_y >= y-ActivateRangeY) ){
				Activate = true
				oGame.Slime_ActivateCount++
		        show_debug_message("[oSlime Step]點擊到一隻史萊姆 ID:"+string(id))
			}
		}
	}
	#endregion
	
	#region //觸發時動作
	if(Activate){
		//抵達時的誤差允許
		targetDeviation = (oGame.Slime_ActivateCount*3.5)
		
		#region //右鍵移動
		if( mouse_check_button(mb_right)){
			if(abs(mouse_x - x)>2){
				show_debug_message("[oSlime Step]我的ID : "+string(id)+"移動目的地:"+string(mouse_x)+","+string(mouse_y)+"| 目前位置:"+string(x)+","+string(y))
				targetX = mouse_x
				targetY = mouse_y

				State = State.move
			}
		}
		#endregion
		
		#region //取消選取
		if mouse_check_button_pressed(mb_left){
			if not ( (mouse_x > x - ActivateRangeX and mouse_x < x + ActivateRangeX) and ( mouse_y <= y and mouse_y >= y-ActivateRangeY) ){
				Activate = false
				oGame.Slime_ActivateCount--
			}
		}
		#endregion
	}
	#endregion
	switch(State){
		case State.idle:
			sprite_index = sSlime_idle
			
			break
	
		case State.move:
			sprite_index = sSlime_move
			
			motion_add(point_direction(x,y,targetX,targetY),1)
			if(speed > moveSpeed){
				speed = moveSpeed
			}
			if(targetX > x){
				image_xscale = SlimeSize
			}else{
				image_xscale = -SlimeSize
			}
			break
		
		case State.hurt:
			sprite_index = sSlime_hurt
			break
		
		case State.death:
			sprite_index = sSlime_death
			break
			
		case State.create:
			sprite_index=sSlime_create
			break
	}
}else{
	if(image_index>=4.75){
		Create_finish=true
		State = State.idle
	}
}