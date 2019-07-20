/// @description Draw self GUI
if (state == VisualState.inactive) exit;

if(sprite_index != -1)
{
	draw_self();
}


if(displayText != "")
{
	draw_set_font(textFont);;
	var xPos = 0;
	switch(textAlignment)
	{
		case Alignment.center: xPos = x -(string_width(displayText)/2);
			break;
		case Alignment.left: xPos = x;
			break;
		case Alignment.right: xPos = x -(string_width(displayText));
	}
	var yPos = y + (sprite_height/2) - (string_height(displayText)/2);
	draw_text_color(xPos, yPos, displayText, textColour, textColour, textColour, textColour, 1);
}