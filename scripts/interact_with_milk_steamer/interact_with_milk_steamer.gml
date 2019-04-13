/// @function interact_with_milk_steamer(milkSteamerObject)
/// @description Handles button interactions with the Milk Steamer Object
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;
var cup = milkSteamerObject.drinkStation.cup;
if(cup != noone)
{
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.HeavyFoamMilk;
	cup.ingredientScore += 3;
}