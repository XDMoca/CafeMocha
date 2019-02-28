/// @function interact_with_counter_primary(counterObject)
/// @description Handles primary button interactions with the Counter Object
/// @arg counterObject the customer object

var counterObject = argument0;

if(counterObject.cup == noone && cup != noone)
{
	counterObject.cup = cup;
	cup = noone;
	holdingCup = false;
}
else if(counterObject.cup != noone && cup == noone)
{
	cup = counterObject.cup;
	counterObject.cup = noone;
	holdingCup = true;
}