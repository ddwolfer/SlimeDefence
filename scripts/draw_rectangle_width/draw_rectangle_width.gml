// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_rectangle_width(){
	///@arg x1
	///@arg y1
	///@arg x2
	///@arg y2
	///@arg width
	///@arg color

	var x1 = argument0
	var y1 = argument1
	var x2 = argument2
	var y2 = argument3
	var width = argument4
	var color = argument5

	draw_set_color(color)
	/*
	for (var i = 0 ; i < width ; i++){
		draw_rectangle(x1 + i,y1 + i ,x2 - i ,y2 - i,1)
	}
	*/
	//左
	draw_line_width(x1,y1-(width/2),x1,y2+(width/2),width)
	//右
	draw_line_width(x2,y1-(width/2),x2,y2+(width/2),width)
	//上
	draw_line_width(x1,y1,x2,y1,width)
	//下
	draw_line_width(x1,y2,x2,y2,width)


	draw_set_color(c_white)
}