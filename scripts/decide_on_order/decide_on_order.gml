/// @function decide_on_order(customerObject)
/// @description Sets the order for the customer
/// @arg customerObject The customer object

var customerObject = argument0;

var numberOfOrders = irandom_range(const_customer_min_orders, const_customer_max_orders);
for(var i=0; i<numberOfOrders; i++)
{
	var orderType = irandom_range(0, OrderItem.Length-1);
	customerObject.order[i] = orderType;
	customerObject.party.order[orderType]++;
}
customerObject.customerStatus = CustomerStatus.decidedOnOrder;