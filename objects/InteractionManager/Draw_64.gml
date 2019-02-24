#region DrawInputPrompts
colour = c_white;
drawXPosition = obj_mocha.x;
drawYPosition = obj_mocha.y;
drawOffset = obj_mocha.sprite_height;
switch(interactableTypeInInteractionRange)
{
	case EquipmentType.Kettle:
	if(!holdingCup)
	{
		if(interactableInInteractionRange.isOn)
		{
			draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Switch Off", colour, colour, colour, colour, 1);
		}
		else
		{
			draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Switch On", colour, colour, colour, colour, 1);
		}
	}
	else
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Fill with water", colour, colour, colour, colour, 1);
	}
	draw_text_colour(drawXPosition, drawYPosition+(drawOffset), "X: Refill", colour, colour, colour, colour, 1);
	break;
	case EquipmentType.MilkSteamer:
	if(!holdingCup)
	{
		if(interactableInInteractionRange.isOn)
		{
			draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Switch Off", colour, colour, colour, colour, 1);
		}
		else
		{
			draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Switch On", colour, colour, colour, colour, 1);
		}
	}
	else
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Fill with milk", colour, colour, colour, colour, 1);
	}
	draw_text_colour(drawXPosition, drawYPosition+(drawOffset), "X: Refill", colour, colour, colour, colour, 1);
	break;
	case EquipmentType.Grinder:
	if(holdingCup)
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Fill with coffee", colour, colour, colour, colour, 1);
	}
	else
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Grind", colour, colour, colour, colour, 1);
	}
	break;
	case EquipmentType.CupDispenser:
	if(!holdingCup)
	{
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Take Cup", colour, colour, colour, colour, 1);
	}
	break;
}
#endregion

#region DrawCupContents
if(holdingCup)
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