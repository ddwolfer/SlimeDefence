/// @description Insert description here
// You can write your code in this editor

var Slimes = instance_create_layer(NewSlimeX,NewSlimeY,"SlimeInstances",oSlime)
	

Slimes.image_xscale = FusionTarget.SlimeSize*1.5
Slimes.image_yscale = FusionTarget.SlimeSize*1.5
Slimes.SlimeSize = FusionTarget.SlimeSize*1.5
var newRed = (SlimeColorReplace.red+FusionTarget.SlimeColorReplace.red) / 2
var newGreen = (SlimeColorReplace.green+FusionTarget.SlimeColorReplace.green) / 2
var newBlue = (SlimeColorReplace.blue+FusionTarget.SlimeColorReplace.blue) / 2
Slimes.SlimeColorReplace = new Color( newRed, newGreen, newBlue)
Slimes.AttackSpeed = FusionTarget.AttackSpeed*0.5
