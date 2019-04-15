/// @function foamed_milk_button_click(foamedMilkButton)
/// @description Handles button interactions with the Foamed Milk Button
/// @arg milkSteamerObject the foamed milk button

var milkSteamerObject = argument0;
var cup = milkSteamerObject.drinkStation.cup;

if(cup == noone)
	return;

cup.ingredients[array_length_1d(cup.ingredients)] = Ingredient.HeavyFoamMilk;
cup.ingredientScore += 3;
cup.cupContents = get_drink_type(cup);