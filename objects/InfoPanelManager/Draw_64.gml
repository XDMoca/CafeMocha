draw_rectangle_color(roomWidth, 0, windowWidth, windowHeight, panelColour, panelColour, panelColour, panelColour, false);

draw_set_font(info_panel_font);
draw_text_color(roomWidth+padding, padding, equipmentNameText, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 2, equipmentInfoTextLine1, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 3, equipmentInfoTextLine2, textColour, textColour, textColour, textColour, 1);
draw_text_color(roomWidth+padding, padding * 4, equipmentInfoTextLine3, textColour, textColour, textColour, textColour, 1);

