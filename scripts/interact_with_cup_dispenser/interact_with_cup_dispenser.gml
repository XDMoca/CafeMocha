/// @function interact_with_cup_dispenser(cupDispenserObject)
/// @description Handles button interactions with the Cup Dispenser Object
/// @arg cupDispenserObject the cup dispenser object

var cupDispenserObject = argument0;
if(cupDispenserObject.drinkStation.cup == noone)
{
	show_debug_message("cupping up");
	cupDispenserObject.drinkStation.cup = instance_create_layer(0, 0, "RoomObjects", obj_cup);
}