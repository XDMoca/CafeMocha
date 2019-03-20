/// @function interact_with_milk_steamer_secondary(milkSteamerObject)
/// @description Handles secondary button interactions with the Milk Steamer Object
/// @arg milkSteamerObject the milk steamer object

var milkSteamerObject = argument0;

if(milkSteamerObject.isOn)
	return;
	
milkSteamerObject.currentCupsHeld = milkSteamerObject.maxCupsCanHold;
milkSteamerObject.currentSteamedLevel = 0;