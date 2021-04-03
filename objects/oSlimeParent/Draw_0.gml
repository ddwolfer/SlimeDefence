/// @description Insert description here
// You can write your code in this editor
if(Create_finish){
	if(Activate){
		shader_set(shOutline)
		shader_set_uniform_f(upixelW, texelW)
		shader_set_uniform_f(upixelH, texelH)
		draw_self()
		shader_reset()
	}
	if(Activate){
		
		if( State==State.move ){
			if(ShowMovePath){
				draw_sprite_ext(sTargetFlag,-1,targetX,targetY,1,1,0,-1,1)
			}
				/*draw_set_color(c_black)
				draw_line_dotted(targetX,targetY,x,y,10)*/
				var _angle = point_direction(x,y,targetX,targetY)
				var _width = 16

				for(var i = 1; distance_to_point(targetX,targetY) > ( i * _width) ; i++){
					draw_sprite_ext( sDottedLine, 0, 
									targetX-lengthdir_x( i*_width, _angle ),  
									targetY-lengthdir_y( i*_width, _angle ),
									0.7,0.7,_angle,c_black,1 )
			}
		}
		

		if(ShowAttackRange){
			draw_set_alpha(0.5)
			draw_circle_color(x,y-6,AttackRange,c_blue,c_blue,true)
			draw_set_alpha(1)
		}
	}
}

shader_set(sh_ReplaceSlimeColor)
shader_set_uniform_f(sh_handle_range,10)
shader_set_uniform_f(sh_handle_replace,
	SlimeColorReplace.toShaderValue(SlimeColorReplace.red),
	SlimeColorReplace.toShaderValue(SlimeColorReplace.green),
	SlimeColorReplace.toShaderValue(SlimeColorReplace.blue)
)

draw_self()
shader_reset()