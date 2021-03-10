/// @description Insert description here
// You can write your code in this editor
if(oGame.Money >= 10){
	oGame.Money = oGame.Money-10

	RandomX = random(camera_get_view_width(view_camera[0]))
	RandomY = random(camera_get_view_height(view_camera[0]))

	var Slimes = instance_create_layer(RandomX,RandomY,"SlimeInstances",oSlime)
	
	with(Slimes){
		Slimes.image_xscale = 1.5
		Slimes.image_yscale = 1.5
	}
}
