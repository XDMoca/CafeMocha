/// @function interact_with_drink_station(interactionManager, stationObject)
/// @description Handles interactions with the Drink Station Object
/// @arg interactionManager The interaction manager
/// @arg stationObject The drink station object

var interactionManager = argument0;
var stationObject = argument1;

if(interactionManager.cup != noone)
	return;

if(stationObject.isMenuOpen)
	return;
	
toggle_drink_station_display(stationObject, true);