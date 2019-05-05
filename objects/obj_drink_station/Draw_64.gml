if(!isMenuOpen)
	return;

draw_rectangle_color(0, 0, panelWidth, viewHeight, panelColour, panelColour, panelColour, panelColour, false);

if(cup != noone)
	draw_sprite(spr_working_cup, cup.cupContents, viewWidth/2, viewHeight/2);