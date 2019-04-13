/// @function interact_with_drink_station(stationObject)
/// @description Handles interactions with the Drink Station Object
/// @arg stationObject The drink station object

var stationObject = argument0;

if(stationObject.isMenuOpen)
	return;
	
stationObject.isMenuOpen = true;
instance_activate_object(stationObject.cupDispenser);
instance_activate_object(stationObject.milkSteamer);
instance_activate_object(stationObject.kettle);
instance_activate_object(stationObject.grinder);