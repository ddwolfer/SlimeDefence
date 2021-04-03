/// @description Insert description here
// You can write your code in this editor
//oGame.Money = oGame.Money-10

RandomX = irandom_range(camera_get_view_x(view_camera[0])+20,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-112)
RandomY = irandom_range(camera_get_view_y(view_camera[0])+20,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-20)

var Slimes = instance_create_layer(RandomX,RandomY,"SlimeInstances",oElementSlime)
	
with(Slimes){
	Slimes.image_xscale = SlimeSize
	Slimes.image_yscale = SlimeSize
}