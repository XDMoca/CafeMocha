/// @function take_order(customerObject)
/// @description Starts dialogue with customer to take their order and sets their status to waiting
/// @arg customerObject The cutomer object

var customerObject = argument0;

if(textbox_exists())
	return;
	
textbox_create("I'd like a cappuccino, please.");
textbox_set_bubble(noone, c_white, c_black, 0.75, example_font, 20, 200, customerObject);
textbox_set_speed(.75);
customerObject.customerStatus = CustomerStatus.waitingForOrder;