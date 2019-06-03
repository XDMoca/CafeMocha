event_inherited();

if(!active)
	return;

if(keyboard_check_pressed(ord("A")))
{
	if(!ds_queue_empty(icons))
	{
		var icon = ds_queue_dequeue(icons);
		var currentSelectedIngredientsNumber = ds_list_size(drinkStation.selectedIngredients);
		if(currentSelectedIngredientsNumber < drinkStation.maxIngredientsCanHold)
		{
			ds_list_add(drinkStation.selectedIngredients, icon.ingredientType);
			icon.isFalling = false
			icon.x = drinkStation.selectedIngredientsPositions[currentSelectedIngredientsNumber,0];
			icon.y = drinkStation.selectedIngredientsPositions[currentSelectedIngredientsNumber,1];
		}
	}
}