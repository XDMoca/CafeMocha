/// @function take_order(customerObject)
/// @description Starts dialogue with customer to take their order and sets their status to waiting
/// @arg customerObject The customer object

var customerObject = argument0;

//if(textbox_exists())
//	return;
	
	
var orderDialogue = "";

for(var i=0; i<array_length_1d(customerObject.order); i++)
{
	switch(customerObject.order[i])
	{
		case OrderItem.Coffee: orderDialogue += "Coffee "; break;
		case OrderItem.Water:  orderDialogue += "Water "; break;
	}
}

customerObject.textbox = textbox_create(orderDialogue);
textbox_set_bubble(noone, c_white, c_black, 0.75, example_font, 20, 120, customerObject);
textbox_set_speed(customerObject, .75);
customerObject.customerStatus = CustomerStatus.waitingForOrder;