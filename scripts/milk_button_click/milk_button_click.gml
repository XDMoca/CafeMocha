/// @function foamed_milk_button_click(milkButton)
/// @description Handles button interactions with the Milk Button
/// @arg milkButton the milk button

var milkButton = argument0;
var cup = milkButton.drinkStation.cup;
if(cup != noone)
{
	cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.LightFoamMilk;
	cup.ingredientScore += 3;
}