/// @function give_cup(customerObject, cupObject)
/// @description Gives the currently held cup to the customer
/// @arg customerObject The customer object
/// @arg cupObject The cup object

var customerObject = argument0;
var cupObject = argument1;

if(cupObject == noone)
	return;

var cupRating = cupObject.ingredientScore / array_length_1d(cupObject.ingredients);
show_debug_message("this cup's rating is: " + string(cupRating));

customerObject.customerStatus = CustomerStatus.drinkingOrder;
customerObject.alarm[0] = customerObject.timeToFinishDrink;
cup = noone;
holdingCup = false;