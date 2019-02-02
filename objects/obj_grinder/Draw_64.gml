text = string(currentReps) + "/" + string(repsTillOneGrind);
colour = c_green;
draw_text_colour(x, y-(sprite_height/2), text, colour, colour, colour, colour, 1);

text = string(currentCupsHeld) + "/" + string(maxCupsCanHold);
colour = c_blue;
draw_text_colour(x, y-(sprite_height), text, colour, colour, colour, colour, 1);