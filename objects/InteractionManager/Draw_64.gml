if(!can_move())
	return;

#region DrawInputPrompts
draw_set_font(fnt_info_panel);
colour = c_white;
drawXPosition = obj_mocha.x;
drawYPosition = obj_mocha.y;
drawOffset = obj_mocha.sprite_height;
switch(interactableTypeInInteractionRange)
{
	case InteractableType.Counter:
	if(holdingCup && interactableInInteractionRange.cup == noone)
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Put Down Cup", colour, colour, colour, colour, 1);
	}
	else if(!holdingCup && interactableInInteractionRange.cup != noone)
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Pick Up Cup", colour, colour, colour, colour, 1);
	}
	break;
	
	case InteractableType.DrinkStation:
	if(cup == noone)
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Make Drinks", colour, colour, colour, colour, 1);
	}
	break;
}
#endregion

#region DrawCupContents
if(cup != noone)
{
	if(array_length_1d(cup.ingredients) == 0)
	{
		draw_text_colour(0, 0, "Empty Cup", colour, colour, colour, colour, 1);
	}
	else if (array_equals(cup.ingredients, [Ingredient.Coffee]))
	{
		draw_text_colour(0, 0, "Ground coffee and filter", colour, colour, colour, colour, 1);
	}
	else if (array_equals(cup.ingredients, [Ingredient.Coffee, Ingredient.Water]))
	{
		draw_text_colour(0, 0, "Espresso", colour, colour, colour, colour, 1);
	}
	else if (array_equals(cup.ingredients, [Ingredient.Coffee, Ingredient.Water, Ingredient.HeavyFoamMilk]))
	{
		draw_text_colour(0, 0, "Cappuccino", colour, colour, colour, colour, 1);
	}
	else if (array_equals(cup.ingredients, [Ingredient.Coffee, Ingredient.Water, Ingredient.LightFoamMilk]))
	{
		draw_text_colour(0, 0, "Cafe Latte", colour, colour, colour, colour, 1);
	}
	else
	{
		draw_text_colour(0, 0, "Unknown concoction", colour, colour, colour, colour, 1);
	}
}
#endregion