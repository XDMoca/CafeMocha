if(!holdingCup)
	return;
	
ingredientsInCup = "";
for(i = 0; i < array_length_1d(cup.ingredients); i++)
{
	ingredientsInCup += (string(cup.ingredients[i]) + " ");
}

show_debug_message(ingredientsInCup);