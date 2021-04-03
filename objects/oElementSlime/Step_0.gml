/// @description Insert description here
// You can write your code in this editor

//show_debug_message("[oElementSlime Step] 目前融合目標:"+string(FusionTarget))

if(Create_finish){
	#region //開始融合
	if( instance_exists(FusionTarget) ){
		if( collision_circle(x,y-(sprite_height/4),sprite_width,FusionTarget,false,true) ){
			show_debug_message("[oElementSlime Step] 撞到目標啦")
			targetX = x
			targetY = y
			FusionTarget = 0
			State = State.idle
		}
	}	
	#endregion
	
	if(Activate){
		#region //左鍵進行融合選擇
		if(mouse_check_button_released(mb_left)){
			oGame.rangeSelectActive = true
			show_debug_message("[oElementSlime Step] 點擊了:"+string(PressCount))
			PressCount = 0
			mb_leftPressCount = 0
			FusionFlag = false
			
			if( FusionTarget!=0 ){
				show_debug_message("[oElementSlime Step] 與"+string(FusionTarget)+"融合")
				show_debug_message("[oElementSlime Step] 目標地 x:"+string(FusionTarget.x)+"| y:"+string(FusionTarget.y))
				targetX = FusionTarget.x
				targetY = FusionTarget.y
				State = State.move
				ShowMovePath = false
			}else{
				ShowMovePath = true
			}
		}
		#endregion
		
		if( mouse_check_button(mb_left) ){
			if( (mouse_x > x - ActivateRangeX and mouse_x < x + ActivateRangeX) and ( mouse_y <= y and mouse_y >= y-ActivateRangeY) ){
				oGame.rangeSelectActive = false
				PressCount+=1
				if( PressCount > 10 ){
					FusionFlag = true
				}
			}
			mb_leftPressCount += 1.5
		}
	}
	
}
event_inherited()