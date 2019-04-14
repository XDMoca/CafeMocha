/// @function toggle_drink_station_display(objDrinkStation, show)
/// @description Shows or hides the drink station screen
/// @arg objDrinkStation the drink station object
/// @arg show boolean stating whether to show or hide the screen

var drinkStation = argument0;
var show = argument1;
if(show)
{
	drinkStation.isMenuOpen = true;
	instance_activate_object(drinkStation.btnCup);
	instance_activate_object(drinkStation.btnDiscardCup);
	instance_activate_object(drinkStation.btnEspresso);
	instance_activate_object(drinkStation.btnFoamedMilk);
	instance_activate_object(drinkStation.btnMilk);
}
else
{
	drinkStation.isMenuOpen = false;
	instance_deactivate_object(drinkStation.btnCup);
	instance_deactivate_object(drinkStation.btnDiscardCup);
	instance_deactivate_object(drinkStation.btnEspresso);
	instance_deactivate_object(drinkStation.btnFoamedMilk);
	instance_deactivate_object(drinkStation.btnMilk);
}