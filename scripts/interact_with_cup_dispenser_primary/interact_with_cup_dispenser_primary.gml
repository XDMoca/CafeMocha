/// @function interact_with_cup_dispenser_primary()
/// @description Handles primary button interactions with the Cup Dispenser Object

if(!holdingCup)
{
	cup = instance_create_layer(0, 0, "RoomObjects", obj_cup);
	holdingCup = true;
}