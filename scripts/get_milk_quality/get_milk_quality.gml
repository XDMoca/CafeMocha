/// @function get_milk_quality(milkSteamerObject)
/// @description returns the milk quality rating of the milk in the steamer
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;
if(milkSteamerObject.currentSteamedLevel >= 34 && milkSteamerObject.currentSteamedLevel <= 36)
{
	return 5;
}
if(milkSteamerObject.currentSteamedLevel >= 74 && milkSteamerObject.currentSteamedLevel <= 76)
{
	return 5;
}
if(milkSteamerObject.currentSteamedLevel >= 30 && milkSteamerObject.currentSteamedLevel <= 40)
{
	return 4;
}
if(milkSteamerObject.currentSteamedLevel >= 70 && milkSteamerObject.currentSteamedLevel <= 80)
{
	return 4;
}
if(milkSteamerObject.currentSteamedLevel >= 25 && milkSteamerObject.currentSteamedLevel <= 45)
{
	return 3;
}
if(milkSteamerObject.currentSteamedLevel >= 65 && milkSteamerObject.currentSteamedLevel <= 85)
{
	return 3;
}
if(milkSteamerObject.currentSteamedLevel >= 20 && milkSteamerObject.currentSteamedLevel <= 50)
{
	return 2;
}
if(milkSteamerObject.currentSteamedLevel >= 60 && milkSteamerObject.currentSteamedLevel <= 90)
{
	return 2;
}

return 1;