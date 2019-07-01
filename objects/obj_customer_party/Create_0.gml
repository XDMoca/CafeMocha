customers = [];
currentTimeWaiting = 0;
minTimeToDecideOrder = 5;
maxTimeToDecideOrder = 10;
numberOfCustomersInParty = 0;
table = noone;
order = [];

//Initialise Order Array
for(var i=0; i<OrderItem.Length; i++)
{
	order[i] = 0;
}