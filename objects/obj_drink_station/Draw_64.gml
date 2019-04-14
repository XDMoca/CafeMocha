if(!isMenuOpen)
	return;

draw_rectangle_color(0, 0, panelWidth, windowHeight, panelColour, panelColour, panelColour, panelColour, false);

if(cup != noone)
	draw_sprite(spr_working_cup, cup.cupContents, windowWidth/2, windowHeight/2);