/// @description Insert description here
// You can write your code in this editor

randomize()
Money=100
Slime_Count = 0
Slime_ActivateCount = 0
SlimeList = ds_list_create()


CX = camera_get_view_x(view_camera[0])
CY = camera_get_view_y(view_camera[0])

roomInfo = room_get_viewport(room,0)

resizeRatio = roomInfo[3]/camera_get_view_width(view_camera[0])

Font=font_add("NotoSansMonoCJKtcBold.otf",10*resizeRatio,0 ,0 ,0 ,65535)

rangeFindFlag = false
rangeFindStartX = 0
rangeFindStartY = 0
rangeSelectActive = true

globalvar Player_Slime_color;
Player_Slime_color = make_color_rgb(157,208,145)