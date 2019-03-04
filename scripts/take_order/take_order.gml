/// @function take_order(customerObject)
/// @description Starts dialogue with customer to take their order and sets their status to waiting
/// @arg customerObject The customer object

var customerObject = argument0;

if(textbox_exists())
	return;
	
	
var orderDialogue = "";

switch(customerObject.order)
{
	case Order.Cappuccino: orderDialogue = "I'd like a cappuccino, please."; break;
	case Order.CafeLatte:  orderDialogue = "Can I get a Cafe Latte, please."; break;
	case Order.Espresso:  orderDialogue = "I'll take an espresso, please."; break;
}

textbox_create(orderDialogue);
textbox_set_bubble(noone, c_white, c_black, 0.75, example_font, 20, 200, customerObject);
textbox_set_speed(.75);
customerObject.customerStatus = CustomerStatus.waitingForOrder;