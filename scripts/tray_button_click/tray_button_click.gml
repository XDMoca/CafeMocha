/// @function tray_button_click(trayButton)
/// @description Handles button interactions with the Tray Button
/// @arg espressoButton The tray button

var trayButton = argument0;
var cup = trayButton.drinkStation.cup;

if(cup != noone)
{
	interactionManager = InteractionManager;
	
	if(ds_list_size(interactionManager.trayItems) >= interactionManager.maxTrayItems)
		return;
	
	ds_list_add(interactionManager.trayItems, cup);
	trayButton.drinkStation.cup = noone;
}