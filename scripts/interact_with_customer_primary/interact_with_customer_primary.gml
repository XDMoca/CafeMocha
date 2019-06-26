/// @function interact_with_customer_primary(customerObject)
/// @description Handles primary button interactions with the Customer Object
/// @arg customerObject the customer object

var customerObject = argument0;

if(party != noone)
	return;
	
switch(customerObject.customerStatus)
{
	case CustomerStatus.waitingForTable:
		party = customerObject.party;
		for(var i = 0; i < party.numberOfCustomersInParty; i++)
		{
			var initialX = party.customers[i].targetToFollow.x + party.customers[i].distanceFromTarget;
			var initialY = party.customers[i].targetToFollow.y;
			for(var j = party.customers[i].walkPathBufferSize-1; j >= 0; j--)
			{
			    party.customers[i].walkPathBuffer_x[j] = initialX;
			    party.customers[i].walkPathBuffer_y[j] = initialY;
			}
			party.customers[i].customerStatus = CustomerStatus.followingPlayer;
		}
	break;
	//case CustomerStatus.decidedOnOrder:
	//		take_order(customerObject);
	//break;
	//case CustomerStatus.waitingForOrder:
	//	show_tray_menu(InteractionManager_Open);
	break;
}