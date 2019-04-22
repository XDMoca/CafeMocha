/// @function interact_with_drink_station(stationObject)
/// @description Handles interactions with the Drink Station Object
/// @arg stationObject The drink station object

var stationObject = argument0;

if(stationObject.isMenuOpen)
	return;
	
toggle_drink_station_display(stationObject, true);