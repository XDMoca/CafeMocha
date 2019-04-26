/// @function customer_has_left(partyObject)
/// @description Checks if all customers in the current party have left and destroys the party if they have
/// @arg partyObject The party object

var partyObject = argument0;
partyObject.numberOfCustomersInParty--;
if(partyObject.numberOfCustomersInParty == 0)
{
	instance_destroy(partyObject);
}