/// @function remove_all_selected_order_items()
/// @description removes all order items from drink station

var drinkStation = obj_drink_station;

with(ui_rhythm_icon)
{
	instance_destroy(self);
}
ds_list_clear(drinkStation.selectedOrderItems);