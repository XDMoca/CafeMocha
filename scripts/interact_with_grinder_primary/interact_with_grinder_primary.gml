/// @function interact_with_grinder_primary(grinderObject)
/// @description Handles primary button interactions with the Grinder Object
/// @arg grinderObject The grinder object

var grinderObject = argument0;

if(holdingCup)
{
	if(grinderObject.currentCupsHeld > 0)
	{
		cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Coffee;
		grinderObject.currentCupsHeld--;
	}
}
else
{
	if(grinderObject.currentCupsHeld < grinderObject.maxCupsCanHold)
	{
		grinderObject.currentReps++;
		if(grinderObject.currentReps == grinderObject.repsTillOneGrind)
		{
			grinderObject.currentCupsHeld++;
			grinderObject.currentReps = 0;
		}
	}
}