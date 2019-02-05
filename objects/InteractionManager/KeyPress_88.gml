#region KettleInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(equipment != noone)
{
	interact_with_kettle_secondary(equipment);
	return;
}
#endregion

#region MilkSteamerInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(equipment != noone)
{
	interact_with_milk_steamer_secondary(equipment);
	return;
}
#endregion