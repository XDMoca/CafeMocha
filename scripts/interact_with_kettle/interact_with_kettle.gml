/// @function interact_with_kettle(kettleObject)
/// @description Handles button interactions with the Kettle Object
/// @arg kettleObject The kettle object

var kettleObject = argument0;
var cup = kettleObject.drinkStation.cup;

if(cup != noone)
{
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Water;
	cup.ingredientScore += 3;
}