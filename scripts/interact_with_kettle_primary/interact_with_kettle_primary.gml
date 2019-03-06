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
		switch(kettleObject.currentHeatLevel)
		{
			case 9:  cup.ingredientScore += 5; break;
			case 10: case 8: cup.ingredientScore += 4; break;
			case 7:  cup.ingredientScore += 3; break;
			case 6: case 5:  cup.ingredientScore += 2; break;
			default:  cup.ingredientScore += 1; break;
		}
	}
}
else
{
	kettleObject.isOn = !kettleObject.isOn;
	kettleObject.alarm[0] = kettleObject.timeBetweenLevels;
}