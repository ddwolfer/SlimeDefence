/// @description Insert description here
// You can write your code in this editor

var HpBarwidth = 10
var HpBarheight = 2

var HpPercent = Hp / MaxHp

draw_set_color(c_red)
draw_rectangle(x-HpBarwidth,y- sprite_height/2 -HpBarheight*2 , x-HpBarwidth + (2*HpBarwidth*HpPercent) , y-sprite_height/2-HpBarheight, false)
draw_set_color(c_black)
//draw_rectangle(x-HpBarwidth,y- sprite_height/2 -HpBarheight*2 , x+HpBarwidth , y-sprite_height/2-HpBarheight,true)
draw_rectangle_width(x-HpBarwidth -1,y-1- sprite_height/2 -HpBarheight*2 , x+HpBarwidth , y-sprite_height/2-HpBarheight,1,c_black)
draw_set_color(c_white)

if( Hp<=0 ){ instance_destroy(id) }
draw_self()