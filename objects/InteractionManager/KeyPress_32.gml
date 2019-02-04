#region InteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(equipment != noone)
{
	interact_with_kettle_primary(equipment);
	return;
}

equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_grinder, false, true);
if(equipment != noone)
{
	interact_with_grinder_primary(equipment);
	return;
}

equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_cup_dispenser, false, true);
if(equipment != noone)
{
	interact_with_cup_dispenser_primary();
	return;
}

equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(equipment != noone)
{
	interact_with_milk_steamer_primary(equipment);
	return;
}
#endregion