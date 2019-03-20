/// @function get_milk_ingredient(milkSteamerObject)
/// @description returns the milk ingredient based on the steamed level of the milk in the steamer
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;
if(milkSteamerObject.currentSteamedLevel < 50)
{
	return Ingredient.LightFoamMilk;
}
if(milkSteamerObject.currentSteamedLevel >= 50)
{
	return Ingredient.HeavyFoamMilk;
}