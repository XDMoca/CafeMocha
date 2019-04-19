event_inherited();
draw_set_font(fnt_info_panel);
var xPos = x -(string_width(itemText)/2)
var yPos = y + (sprite_height/2) - (string_height(itemText)/2);
draw_text_color(xPos, yPos, itemText, c_blue, c_blue, c_blue, c_blue, 1);