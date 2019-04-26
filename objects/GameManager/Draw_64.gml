#region DisplayMoney
var moneyText = "$" + string(money);
draw_set_font(fnt_money);
draw_set_color(c_yellow);
draw_text_outline(0, 0, moneyText, 3, c_black, 8);
#endregion

#region DisplayMoneyGained
if(moneyGained > 0)
{
	var moneyGainedText = "+$" + string(moneyGained);
	draw_text_outline(0, 25, moneyGainedText, 3, c_black, 8);
	money++;
	moneyGained--;
}
#endregion

#region RoomTransition
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
#endregion