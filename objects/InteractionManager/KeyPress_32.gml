#region KettleInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(equipment != noone)
{
	if(holdingCup)
	{
		if(equipment.currentCupsHeld > 0)
		{
			equipment.currentCupsHeld--;
			cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Water;
		}
	}
	else
	{
		equipment.isOn = !equipment.isOn;
		equipment.alarm[0] = equipment.timeBetweenLevels;
	}
	return;
}
#endregion

#region GrinderInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_grinder, false, true);
if(equipment != noone)
{
	if(holdingCup)
	{
		if(equipment.currentCupsHeld > 0)
		{
			cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Coffee;
			equipment.currentCupsHeld--;
		}
	}
	else
	{
		if(equipment.currentCupsHeld < equipment.maxCupsCanHold)
		{
			equipment.currentReps++;
			if(equipment.currentReps == equipment.repsTillOneGrind)
			{
				equipment.currentCupsHeld++;
				equipment.currentReps = 0;
			}
		}
	}
	return;
}
#endregion

#region CupDispenserInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_cup_dispenser, false, true);
if(equipment != noone)
{
	if(!holdingCup)
	{
		cup = instance_create_layer(0, 0, "RoomObjects", obj_cup);
		holdingCup = true;
	}
	return;
}
#endregion

#region MilkSteamerInteractionCode
equipment = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(equipment != noone)
{
	if(holdingCup)
	{
		if(equipment.currentCupsHeld > 0)
		{
			equipment.currentCupsHeld--;
			cup.ingredients[array_length_1d(cup.ingredients)] = equipment.currentSteamedLevel == MilkLevels.LightFoam ? Ingredient.LightFoamMilk : Ingredient.HeavyFoamMilk;
		}
	}
	else
	{
		equipment.isOn = !equipment.isOn;
		equipment.alarm[0] = equipment.timeBetweenLevels;
	}
	return;
}
#endregion