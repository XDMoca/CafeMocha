/// @function interact_with_table_primary(tableObject)
/// @description Handles primary button interactions with the Table Object
/// @arg tableObject the customer object

var tableObject = argument0;

if(party == noone)
	return;
	
if(array_length_1d(party.customers) > array_length_1d(tableObject.chairs))
	return;

for(i=0; i<array_length_1d(party.customers); i++)
{
	party.customers[i].customerStatus = CustomerStatus.decidingOnOrder;
	party.customers[i].x = tableObject.chairs[i].x;
	party.customers[i].y = tableObject.chairs[i].y;
	party.customers[i].direction = tableObject.chairs[i].direction;
}

tableObject.party = party;
party = noone;