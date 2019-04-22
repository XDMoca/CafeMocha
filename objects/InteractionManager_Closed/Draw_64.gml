if(!can_move_in_closed_shop())
	return;

#region DrawInputPrompts
draw_set_font(fnt_info_panel);
var colour = c_white;
var drawXPosition = obj_mocha.x;
var drawYPosition = obj_mocha.y;
var drawOffset = obj_mocha.sprite_height;
switch(interactableTypeInInteractionRange)
{
	case InteractableType.Door:
		draw_text_colour(drawXPosition, drawYPosition+(drawOffset/2), "Spacebar: Open Shop", colour, colour, colour, colour, 1);
	break;
}
#endregion