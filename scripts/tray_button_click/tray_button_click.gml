/// @function tray_button_click(trayButton)
/// @description Handles button interactions with the Tray Button
/// @arg espressoButton The tray button

var trayButton = argument0;
var drinkStation = trayButton.drinkStation;
var interactionManager = InteractionManager_Open;
	
var itemsCount = ds_list_size(interactionManager.trayItems);
for(var i=0; i<itemsCount; i++)
{
	interactionManager.orderItems[drinkStation.selectedOrderItems[i].orderItemType]++;
}

remove_all_order_items();