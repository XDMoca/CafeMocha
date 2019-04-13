/// @function interact_with_grinder(grinderObject)
/// @description Handles button interactions with the Grinder Object
/// @arg grinderObject The grinder object

var grinderObject = argument0;
var cup = grinderObject.drinkStation.cup;

if(cup != noone)
{
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Coffee;
	cup.ingredientScore += 3;
}