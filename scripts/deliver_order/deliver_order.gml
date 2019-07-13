/// @function deliver_order(party)
/// @description Gives the order held to the prarty at the table
/// @arg party The party receiving the order

var party = argument0;

party.currentOrderRating = currentOrderRating;
var isCorrectOrder = "Order is correct";
for(var i=0; i<OrderItem.Length; i++)
{
	if(party.order[i] != orderItems[i])
	{
		isCorrectOrder = "Order is incorrect";
		party.currentOrderRating = party.currentOrderRating/2;
		break;
	}
}
show_debug_message(isCorrectOrder);

for(var i=0; i<array_length_1d(party.customers); i++)
{
	party.customers[i].customerStatus = CustomerStatus.drinkingOrder;
	party.customers[i].alarm[0] = party.customers[i].timeToFinishDrink;
}

for(var i=0; i<OrderItem.Length; i++)
{
	orderItems[i] = 0;
}