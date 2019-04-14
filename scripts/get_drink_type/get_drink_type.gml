/// @function get_drink_type(cupObject)
/// @description Returns enum value of drink
/// @arg cupObject the cup object

var cupObject = argument0;
if(cupObject == noone)
	return;
	
if(array_length_1d(cupObject.ingredients) == 0)
	return CupContents.EmptyCup;
if(array_equals(cupObject.ingredients, [Ingredient.Coffee, Ingredient.Water]))
	return CupContents.Espresso;
if(array_equals(cupObject.ingredients, [Ingredient.Coffee, Ingredient.Water, Ingredient.HeavyFoamMilk]))
	return CupContents.Cappuccino;
	
return CupContents.EmptyCup;