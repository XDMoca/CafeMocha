/// @function interact_with_kettle_primary(kettleObject)
/// @description Handles primary button interactions with the Kettle Object
/// @arg kettleObject The kettle object

var kettleObject = argument0;

if(holdingCup)
{
	if(kettleObject.currentCupsHeld > 0)
	{
		kettleObject.currentCupsHeld--;
		cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Water;
	}
}
else
{
	kettleObject.isOn = !kettleObject.isOn;
	kettleObject.alarm[0] = kettleObject.timeBetweenLevels;
}