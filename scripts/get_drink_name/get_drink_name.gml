/// @function get_drink_name(cupObject)
/// @description Returns the name of the drink
/// @arg cupObject the cup object

var cupObject = argument0;
if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
	return "Espresso";
if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
	return "Cafe Latte";
if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
	return "Cappuccino";
