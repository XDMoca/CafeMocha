/// @function interact_with_customer_primary(customerObject)
/// @description Handles primary button interactions with the Customer Object
/// @arg customerObject the customer object

var customerObject = argument0;

if(party != noone)
	return;
	
switch(customerObject.customerStatus)
{
	case CustomerStatus.waitingForTable:
		var initialX = customerObject.targetToFollow.x + customerObject.distanceFromTarget;
		var initialY = customerObject.targetToFollow.y;
		for(var i = customerObject.walkPathBufferSize-1; i >= 0; i--)
		{
		    customerObject.walkPathBuffer_x[i] = initialX;
		    customerObject.walkPathBuffer_y[i] = initialY;
		}
		customerObject.customerStatus = CustomerStatus.followingPlayer;
		party = customerObject.party;
	break;
	case CustomerStatus.decidedOnOrder:
			take_order(customerObject);
	break;
	case CustomerStatus.waitingForOrder:
		if(holdingCup)
			give_cup(customerObject, cup);
		else
			take_order(customerObject);
	break;
}