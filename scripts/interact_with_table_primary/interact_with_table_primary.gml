/// @function interact_with_table_primary(tableObject)
/// @description Handles primary button interactions with the Table Object
/// @arg tableObject the customer object

var tableObject = argument0;

if(party != noone && tableObject.party == noone)
{
	if(array_length_1d(party.customers) > array_length_1d(tableObject.chairs))
		return;

	for(var i=0; i<array_length_1d(party.customers); i++)
	{
		party.customers[i].customerStatus = CustomerStatus.decidingOnOrder;
		party.customers[i].x = tableObject.chairs[i].x;
		party.customers[i].y = tableObject.chairs[i].y;
		party.customers[i].direction = tableObject.chairs[i].direction;
	}

	party.alarm[0] = irandom_range(party.minTimeToDecideOrder, party.maxTimeToDecideOrder) * room_speed;
	tableObject.party = party;
	party.table = tableObject;
	party = noone;
	return;
}

if(party == noone && tableObject.party != noone)
{
	switch(tableObject.party.customers[0].customerStatus)
	{
		case CustomerStatus.decidedOnOrder:
		{
			for(var i=0; i<array_length_1d(tableObject.party.customers); i++)
			{
				take_order(tableObject.party.customers[i]);
			}
			break;
		}
		case CustomerStatus.waitingForOrder:
		{
			deliver_order(tableObject.party);
		}
	}
}