if(!can_move_in_closed_shop())
	return;

#region Draw Interaction Prompts
draw_set_font(fnt_interaction_prompt);
var colour = c_white;
var outlineColour = c_black;
var promptText = "";
switch(interactableTypeInInteractionRange)
{
	case InteractableType.Door:
		promptText = "Spacebar: Open Shop";
	break;
}
var promptXPosition = (viewWidth/2) - (string_width(promptText)/2);
draw_set_color(colour);
draw_text_outline(promptXPosition, promptYPosition, promptText, 2, outlineColour, 8);
#endregion