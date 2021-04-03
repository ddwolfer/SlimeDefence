/// @description Insert description here
// You can write your code in this editor
if(room = r_demo01){
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	
	draw_sprite_ext(sMoney, 0,10*resizeRatio,10*resizeRatio, resizeRatio, resizeRatio, 0, -1, 1) 

	draw_set_font(Font)

	draw_text(48*resizeRatio,23*resizeRatio,string(Money)) 


	draw_text(10*resizeRatio,53*resizeRatio,"數量:"+string(Slime_Count)) 

	draw_text(10*resizeRatio,83*resizeRatio,"觸發:"+string(Slime_ActivateCount)) 
}