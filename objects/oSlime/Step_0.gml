/// @description Insert description here
// You can write your code in this editor
event_inherited()

var EnemyFind = collision_circle(x,y,AttackRange,oEnemy,0,1)
if(EnemyFind > 0 and AttackCooldown and State==State.idle){
	
	var EnemyTarget = instance_nearest(x,y,oEnemy)
	
	AttackCooldown = false
	show_debug_message("[oSlime Step]找到目標攻擊 敵人為:" + string(EnemyTarget))
	
	var SlimeAttack = instance_create_layer(x,y-6,"Instances",oBullet)
	with(SlimeAttack){
		SlimeAttack.TargetEnemyID = EnemyTarget
		SlimeAttack.image_xscale = 0.5
		SlimeAttack.image_yscale = 0.5
	}
	alarm[0] = AttackSpeed
}


