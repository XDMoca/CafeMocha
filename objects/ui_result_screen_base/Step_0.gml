event_inherited();

if(keyboard_check_pressed(vk_space))
{
	if(!animateFunds)
	{
		animateFunds = true;
		audio_play_sound(snd_cash_register, 10, false);
	}
}

if(animateFunds)
{
	if(amountEarnedValue.value != 0)
	{
		profitValue.value++;
		amountEarnedValue.value--;
	}
	if(expensesValue.value != 0)
	{
		profitValue.value--;
		expensesValue.value++;
	}
	if(rentValue.value != 0)
	{
		profitValue.value--;
		rentValue.value++;
	}
}