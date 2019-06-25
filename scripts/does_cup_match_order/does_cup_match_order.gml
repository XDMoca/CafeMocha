/// @function does_cup_match_order(cupObject)
/// @description Checks if the cup matches the specified order
/// @arg cupObject The cup object
/// @arg order The enum value of the desired order

var cupObject = argument0;
var order = argument1;

switch(order)
{
	case Order.Espresso:
		if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
			return true;
		else
			return false;
	case Order.CafeLatte:
		if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
			return true;
		else
			return false;
	case Order.Cappuccino:
		if(array_equals(cupObject.orderItems, [OrderItem.Coffee, OrderItem.Water]))
			return true;
		else
			return false;
	default:
		return false;
}