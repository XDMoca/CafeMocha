/// @function espresso_button_click(espressoButton)
/// @description Handles button interactions with the Espresso Button
/// @arg espressoButton The espresso button

var espressoButton = argument0;
var cup = espressoButton.drinkStation.cup;

if(cup != noone)
{
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Coffee;
	cup.ingredientScore += 3;
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.Water;
	cup.ingredientScore += 3;
}

cup.cupContents = get_drink_type(cup);