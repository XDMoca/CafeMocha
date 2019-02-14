/*if(!holdingCup)
	return;
	
ingredientsInCup = "";
for(i = 0; i < array_length_1d(cup.ingredients); i++)
{
	ingredientsInCup += (string(cup.ingredients[i]) + " ");
}

show_debug_message(ingredientsInCup);*/

if(party == noone)
	return;
show_debug_message(string(party.currentTimeWaiting / room_speed));