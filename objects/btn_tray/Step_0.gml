if(drinkStation.cup == noone)
	isClickable = false;
else
{
	if(ds_list_size(interactionManager.trayItems) >= interactionManager.maxTrayItems)
		isClickable = false;
	else
		isClickable = true;
}
event_inherited();

