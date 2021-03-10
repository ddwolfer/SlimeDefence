/// @description Insert description here
// You can write your code in this editor
if(Activate){
	shader_set(shOutline)
	shader_set_uniform_f(upixelW, texelW)
	shader_set_uniform_f(upixelH, texelH)
	draw_self()
	shader_reset()
}
draw_self()