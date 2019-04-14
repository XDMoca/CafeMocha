/// @function discard_cup_button_click(discardCupButton)
/// @description Handles button interactions with the Discard Cup Button
/// @arg discardCupButton the discard cup button

var discardCupButton = argument0;
if(discardCupButton.drinkStation.cup != noone)
{
	instance_destroy(discardCupButton.drinkStation.cup);
	discardCupButton.drinkStation.cup = noone;
}