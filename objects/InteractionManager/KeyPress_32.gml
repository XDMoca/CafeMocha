if(textbox_exists())
	return;
	
#region InteractionCode
interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(interactable != noone)
{
	interact_with_kettle_primary(interactable);
	return;
}

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_grinder, false, true);
if(interactable != noone)
{
	interact_with_grinder_primary(interactable);
	return;
}

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_cup_dispenser, false, true);
if(interactable != noone)
{
	interact_with_cup_dispenser_primary();
	return;
}

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(interactable != noone)
{
	interact_with_milk_steamer_primary(interactable);
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

interactable = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_counter, false, true);
if(interactable != noone)
{
	interact_with_counter_primary(interactable);
	return;
}
#endregion