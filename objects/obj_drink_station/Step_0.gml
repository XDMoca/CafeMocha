if(!isMenuOpen)
	return;
	
if(keyboard_check(ord("X")))
{
	toggle_drink_station_display(id, false);
	
	if(cup != noone)
	{
		InteractionManager.cup = cup;
		cup = noone;
	}
}