/// @function interact_with_kettle_secondary(kettleObject)
/// @description Handles secondary button interactions with the Kettle Object
/// @arg kettleObject The kettle object

var kettleObject = argument0;

kettleObject.currentCupsHeld = kettleObject.maxCupsCanHold;
kettleObject.currentHeatLevel = 0;