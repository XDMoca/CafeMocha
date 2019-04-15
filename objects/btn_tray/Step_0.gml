if(drinkStation.cup == noone)
	isClickable = false;
else
{
	if(array_length_1d(interactionManager.trayItems) >= interactionManager.maxTrayItems)
		isClickable = false;
	else
		isClickable = true;
}
event_inherited();

