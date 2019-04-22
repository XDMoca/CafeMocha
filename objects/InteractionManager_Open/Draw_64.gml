if(!can_move_in_open_shop())
	return;

#region DrawInputPrompts
draw_set_font(fnt_info_panel);
var colour = c_white;
var drawXPosition = obj_mocha.x;
var drawYPosition = obj_mocha.y;
var drawOffset = obj_mocha.sprite_height;
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