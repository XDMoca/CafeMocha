/// @function decide_on_order(customerObject)
/// @description Sets the order for the customer
/// @arg customerObject The customer object

var customerObject = argument0;

var orderType = irandom_range(0,2);
customerObject.order = orderType;
customerObject.customerStatus = CustomerStatus.decidedOnOrder;