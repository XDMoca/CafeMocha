if(showHud)
{
	#region Display Time
	var timeText = get_day_text(dayOfWeek) + " - " + get_time_text(timeOfDay);
	draw_set_font(fnt_time);
	draw_set_color(c_white);
	draw_text_outline(padding, padding, timeText, 3, c_black, 8);
	var dayTextY = string_height(timeText) + padding;
	#endregion

	#region Display Money
	var moneyText = "$" + string(money);
	draw_set_font(fnt_money);
	draw_set_color(c_yellow);
	var moneyTextY = dayTextY;
	draw_text_outline(padding, moneyTextY, moneyText, 3, c_black, 8);
	#endregion

	#region Display Money Gained
if(moneyGained > 0)
{
	var moneyGainedText = "+$" + string(moneyGained);
	var moneyGainedTextY = moneyTextY + string_height(moneyText);
	draw_text_outline(padding, moneyGainedTextY, moneyGainedText, 3, c_black, 8);
	money++;
	moneyGained--;
}
#endregion
}

#region Room Transition
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
			if(roomEnteredSound != noone)
			{
				audio_play_sound(roomEnteredSound, 10, false);
				roomEnteredSound = noone;
			}
		}
	}
	draw_set_alpha(currentAlpha);
	draw_rectangle_color(0, 0, width, height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}
#endregion