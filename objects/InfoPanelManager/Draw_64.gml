draw_rectangle_color(roomWidth, 0, windowWidth, windowHeight, panelColour, panelColour, panelColour, panelColour, false);

draw_set_font(info_panel_font);
draw_text_color(roomWidth+padding, padding, equipmentNameText, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 2, equipmentInfoTextLine1, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 3, equipmentInfoTextLine2, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 4, equipmentInfoTextLine3, textColour, textColour, textColour, textColour, 1);

if(interactionManager.interactableTypeInInteractionRange == InteractableType.MilkSteamer)
{
	var xStart = roomWidth+padding;
	var yStart = padding * 7;
	var perfectLightFoamYPosition = yStart + ((100-const_perfect_light_milk)/100 * steamerBarHeight) - (string_height("A")/2);
	var perfectHeavyFoamYPosition = yStart + ((100-const_perfect_heavy_milk)/100 * steamerBarHeight) - (string_height("A")/2);
	draw_healthbar(xStart, yStart, xStart+steamerBarWidth, yStart+steamerBarHeight, interactionManager.interactableInInteractionRange.currentSteamedLevel, c_black, c_white, c_white, 3, true, true);
	draw_text_color(xStart+steamerBarWidth, perfectHeavyFoamYPosition, "< Heavy foam", textColour, textColour, textColour, textColour, 1);
	draw_text_color(xStart+steamerBarWidth, perfectLightFoamYPosition, "< Light foam", textColour, textColour, textColour, textColour, 1);
	
}