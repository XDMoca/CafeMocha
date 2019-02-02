#region KettleInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(equipment != noone)
{
	equipment.currentCupsHeld = equipment.maxCupsCanHold;
	equipment.currentHeatLevel = 0;
	return;
}
#endregion

#region MilkSteamerInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(equipment != noone)
{
	equipment.currentCupsHeld = equipment.maxCupsCanHold;
	equipment.currentSteamedLevel = 0;
	return;
}
#endregion