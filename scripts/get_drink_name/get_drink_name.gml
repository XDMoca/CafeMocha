/// @function get_drink_name(cupObject)
/// @description Returns the name of the drink
/// @arg cupObject the cup object

var cupObject = argument0;
if(array_equals(cupObject.ingredients, [Ingredient.Coffee, Ingredient.Water]))
	return "Espresso";
if(array_equals(cupObject.ingredients, [Ingredient.Coffee, Ingredient.Water, Ingredient.LightFoamMilk]))
	return "Cafe Latte";
if(array_equals(cupObject.ingredients, [Ingredient.Coffee, Ingredient.Water, Ingredient.HeavyFoamMilk]))
	return "Cappuccino";
