/// @description Insert description here
// You can write your code in this editor
Trigger = true

oSlimeDisplay.ShowState = ChangeState

var ButtonList = ds_list_create()
var ButtonNum = collision_rectangle_list(0,0,room_width,room_height,oShowSpriteButton,0,1,ButtonList,0)
if(ButtonNum > 0){
	for(var i = 0 ; i < ButtonNum ; i++){
		ButtonList[|i].Trigger = false
	}
}
ds_list_destroy(ButtonList)
