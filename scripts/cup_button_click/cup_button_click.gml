/// @function cup_button_click(cupButton)
/// @description Handles button interactions with the Cup Button
/// @arg cupButton the cup button

var cupButton = argument0;
if(cupButton.drinkStation.cup == noone)
{
	cupButton.drinkStation.cup = instance_create_layer(0, 0, "RoomObjects", obj_cup);
}