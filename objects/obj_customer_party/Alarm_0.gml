/// @description Decide on order
for(i = 0; i < array_length_1d(customers); i++)
{
	customers[i].customerStatus = CustomerStatus.decidedOnOrder;
	show_debug_message("Decided on order");
}