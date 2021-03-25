/// @description Insert description here
// You can write your code in this editor
getInput()

depth = -y

var EnemyNum = collision_circle(x,y,AttackRange,oEnemy,0,1)
if(EnemyNum > 0 and AttackCooldown and State==State.idle){
	
	AttackCooldown = false
	show_debug_message("[oSlime Step]找到目標攻擊 敵人為:" + string(EnemyNum))
	
	var SlimeAttack = instance_create_layer(x,y-6,"Instances",oBullet)
	with(SlimeAttack){
		SlimeAttack.TargetEnemyID = EnemyNum
		SlimeAttack.image_xscale = 0.5
		SlimeAttack.image_yscale = 0.5
	}
	alarm[0] = AttackSpeed
}

if(Create_finish){
	if( (abs(targetX - x)<targetDeviation) and (abs(targetY - y)<targetDeviation) ){
		State = State.idle
	}
	
	if(not Activate){
		if mouse_check_button_pressed(mb_left) {
			if( (mouse_x > x - ActivateRangeX and mouse_x < x + ActivateRangeX) and ( mouse_y <= y and mouse_y >= y-ActivateRangeY) ){
				Activate = true
				oGame.Slime_ActivateCount++
		        show_debug_message("[oSlime Step]點擊到一隻史萊姆 ID:"+string(id))
			}
		}
	}
	
	if(Activate){
		targetDeviation = (oGame.Slime_ActivateCount*3.5)
		
		if( mouse_check_button(mb_right)){
			if(abs(mouse_x - x)>2){
				show_debug_message("[oSlime Step]我的ID : "+string(id)+"移動目的地:"+string(mouse_x)+","+string(mouse_y)+"| 目前位置:"+string(x)+","+string(y))
				targetX = mouse_x
				targetY = mouse_y

				State = State.move
			}
		}
		if mouse_check_button_pressed(mb_left){
			if collision_point(mouse_x, mouse_y, oSlime, true, false){
				show_debug_message("[oSlime Step] you click other slime!")
			}
			if not ( (mouse_x > x - ActivateRangeX and mouse_x < x + ActivateRangeX) and ( mouse_y <= y and mouse_y >= y-ActivateRangeY) ){
				Activate = false
				oGame.Slime_ActivateCount--
			}
		}
	}

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
