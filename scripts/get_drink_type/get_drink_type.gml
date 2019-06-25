/// @function get_drink_type(cupObject)
/// @description Returns enum value of drink
/// @arg cupObject the cup object

var cupObject = argument0;
if(cupObject == noone)
	return;
	
if(array_length_1d(cupObject.orderItems) == 0)
	return CupContents.EmptyCup;
if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
	return CupContents.Espresso;
if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
	return CupContents.Cappuccino;
	
return CupContents.EmptyCup;