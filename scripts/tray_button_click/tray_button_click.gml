/// @function tray_button_click(trayButton)
/// @description Handles button interactions with the Tray Button
/// @arg espressoButton The tray button

var trayButton = argument0;
var drinkStation = trayButton.drinkStation;
var interactionManager = InteractionManager_Open;
	
var itemsCount = ds_list_size(drinkStation.selectedOrderItems);
for(var i=0; i<itemsCount; i++)
{
	interactionManager.orderItems[drinkStation.selectedOrderItems[| i]]++;
}

remove_all_selected_order_items();