if(ds_list_size(drinkStation.selectedOrderItems) > 0)
{
	if(!drinkStation.active)
		isClickable = true;
	else
		isClickable = false;
	
}
else
{
	isClickable = false;
}
event_inherited();

