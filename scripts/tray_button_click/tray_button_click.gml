/// @function tray_button_click(trayButton)
/// @description Handles button interactions with the Tray Button
/// @arg espressoButton The tray button

var trayButton = argument0;
var cup = trayButton.drinkStation.cup;

if(cup != noone)
{
	interactionManager = InteractionManager;
	
	if(array_length_1d(interactionManager.trayItems) >= interactionManager.maxTrayItems)
		return;
	
	interactionManager.trayItems[array_length_1d(interactionManager.trayItems)] = cup;
	trayButton.drinkStation.cup = noone;
}