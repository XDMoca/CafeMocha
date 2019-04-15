/// @function toggle_drink_station_display(objDrinkStation, show)
/// @description Shows or hides the drink station screen
/// @arg objDrinkStation the drink station object
/// @arg show boolean stating whether to show or hide the screen

var drinkStation = argument0;
var show = argument1;
if(show)
{
	drinkStation.isMenuOpen = true;
	instance_activate_object(ui_drink_station_button);
}
else
{
	drinkStation.isMenuOpen = false;
	instance_deactivate_object(ui_drink_station_button);
}