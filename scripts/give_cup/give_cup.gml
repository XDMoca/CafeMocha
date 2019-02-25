/// @function give_cup(customerObject, cupObject)
/// @description Gives the currently held cup to the customer
/// @arg customerObject The customer object
/// @arg cupObject The cup object

var customerObject = argument0;
var cupObject = argument1;

if(cupObject == noone)
	return;

customerObject.customerStatus = CustomerStatus.drinkingOrder;
customerObject.alarm[0] = customerObject.timeToFinishDrink;
cup = noone;
holdingCup = false;