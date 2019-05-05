if(!can_move_in_open_shop())
	return;

#region DrawInputPrompts
draw_set_font(fnt_interaction_prompt);
var colour = c_white;
var outlineColour = c_black;
var promptText = "";
switch(interactableTypeInInteractionRange)
{
	case InteractableType.DrinkStation:
		promptText = "Spacebar: Make Drinks";
	break;
}
var promptXPosition = (viewWidth/2) - (string_width(promptText)/2);
draw_set_color(colour);
draw_text_outline(promptXPosition, promptYPosition, promptText, 2, outlineColour, 8);
#endregion