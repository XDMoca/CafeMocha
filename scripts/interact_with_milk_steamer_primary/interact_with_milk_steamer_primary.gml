/// @function interact_with_milk_steamer_primary(milkSteamerObject)
/// @description Handles primary button interactions with the Milk Steamer Object
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;
if(holdingCup)
{
	if(milkSteamerObject.currentCupsHeld > 0)
	{
		milkSteamerObject.currentCupsHeld--;
		cup.ingredients[array_length_1d(cup.ingredients)] = milkSteamerObject.currentSteamedLevel == MilkLevels.LightFoam ? Ingredient.LightFoamMilk : Ingredient.HeavyFoamMilk;
		cup.ingredientScore += 3;
	}
}
else
{
	milkSteamerObject.isOn = !milkSteamerObject.isOn;
	milkSteamerObject.alarm[0] = milkSteamerObject.timeBetweenLevels;
}