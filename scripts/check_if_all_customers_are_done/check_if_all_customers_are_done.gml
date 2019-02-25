/// @function check_if_all_customers_are_done(partyObject)
/// @description Checks if all customers in the current party have finished their order and leaves table if they have
/// @arg partyObject The party object

var partyObject = argument0;

for(var i = 0; i < array_length_1d(partyObject.customers); i++)
{
	if(partyObject.customers[i].customerStatus != CustomerStatus.waitingForParty)
		return;
}

var spawner = CustomerSpawner;
for(var i = 0; i < array_length_1d(partyObject.customers); i++)
{
	partyObject.customers[i].customerStatus = CustomerStatus.leavingShop;
	move_towards_point(spawner.x, spawner.y, const_move_speed);
}

partyObject.table.party = noone;
partyObject.table = noone;