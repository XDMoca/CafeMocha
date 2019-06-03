if(!can_move_in_open_shop())
	return;
	
#region InteractionCode
interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_drink_station, false, true);
if(interactable != noone)
{
	interact_with_drink_station(interactable);
	return;
}

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_customer, false, true);
if(interactable != noone)
{
	interact_with_customer_primary(interactable);
	return;
}

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_table, false, true);
if(interactable != noone)
{
	interact_with_table_primary(interactable);
	return;
}
#endregion