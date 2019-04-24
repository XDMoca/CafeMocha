if(inTransition)
{
	if(room == targetRoom)
	{
		currentAlpha -= alphaChangeRate;
		if(currentAlpha <= 0)
		{
			inTransition = false;
			targetRoom = -1;
		}
	}
	else
	{
		currentAlpha += alphaChangeRate;
		if(currentAlpha >= 1)
		{
			room_goto(targetRoom);
			audio_play_sound(roomEnteredSound, 10, false);
		}
	}
	draw_set_alpha(currentAlpha);
	draw_rectangle_color(0, 0, width, height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}