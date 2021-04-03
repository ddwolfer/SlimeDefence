/// @description Insert description here
// You can write your code in this editor
motion_add( point_direction(other.x, other.y, x, y), random_range(1,4) )

if(x == other.x and y == other.y){
    if(id > other.id){
        x+=random_range(0.5,1.5)
        y+=random_range(0.5,1.5)
    }else{
        x+=-random_range(0.5,1.5)
        y+=-random_range(0.5,1.5)
    }
}