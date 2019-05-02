/// @description Draw self GUI
if (state == VisualState.inactive) exit;

draw_self();


if(displayText != "")
{
	draw_set_font(fnt_info_panel);
	var xPos = x -(string_width(displayText)/2)
	var yPos = y + (sprite_height/2) - (string_height(displayText)/2);
	draw_text_color(xPos, yPos, displayText, textColour, textColour, textColour, textColour, 1);
}