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
			var rating = "";
			var range = abs(y - icon.y);
			if(range <= const_order_great_range)
			{
				drinkStation.currentOrderRating += 5;
				rating = "Great";
			}
			else if(range <= const_order_fine_range)
			{
				drinkStation.currentOrderRating += 3;
				rating = "Fine";
			}
			else
			{
				drinkStation.currentOrderRating += 1;
				rating = "Bad";
			}
			show_debug_message(rating);
			
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