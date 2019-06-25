event_inherited();

if(!active)
	return;

if(keyboard_check_pressed(ord(beatKey)))
{
	if(!ds_queue_empty(icons))
	{
		var currentSelectedOrderItemsNumber = ds_list_size(drinkStation.selectedOrderItems);
		if(currentSelectedOrderItemsNumber < drinkStation.maxOrderItemsCanHold)
		{
			var icon = ds_queue_dequeue(icons);
			ds_list_add(drinkStation.selectedOrderItems, icon.orderItemType);
			icon.isFalling = false;
			icon.x = drinkStation.selectedOrderItemsPositions[currentSelectedOrderItemsNumber,0];
			icon.y = drinkStation.selectedOrderItemsPositions[currentSelectedOrderItemsNumber,1];
			
			if(currentSelectedOrderItemsNumber+1 == drinkStation.maxOrderItemsCanHold)
			{
				stop_mixing_button_click(btn_stop_mixing);
			}
		}
	}
}