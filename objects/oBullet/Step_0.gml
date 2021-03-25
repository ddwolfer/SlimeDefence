/// @description Insert description here
// You can write your code in this editor
if(instance_exists(TargetEnemyID)){
	FinalPosiionX = TargetEnemyID.x
	FinalPosiionY = TargetEnemyID.y
}else{
	TargetDie = true
}

motion_add( point_direction(x,y, FinalPosiionX , FinalPosiionY), 1 )



if(speed >= BulletSpeed) speed = BulletSpeed