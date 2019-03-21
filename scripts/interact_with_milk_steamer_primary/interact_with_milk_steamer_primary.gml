/// @function interact_with_milk_steamer_primary(milkSteamerObject)
/// @description Handles primary button interactions with the Milk Steamer Object
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;
if(holdingCup)
{
	if(milkSteamerObject.currentCupsHeld > 0)
	{
		milkSteamerObject.currentCupsHeld--;
		cup.ingredients[array_length_1d(cup.ingredients)] = get_milk_ingredient(milkSteamerObject);
		cup.ingredientScore += get_milk_quality(milkSteamerObject);
	}
}
else
{
	if(!milkSteamerObject.isOn && milkSteamerObject.currentSteamedLevel > 0)
		return;
	milkSteamerObject.isOn = !milkSteamerObject.isOn;
	milkSteamerObject.alarm[0] = milkSteamerObject.timeBetweenIntervals;
}