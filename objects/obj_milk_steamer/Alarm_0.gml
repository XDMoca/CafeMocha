if(isOn)
{
	if(currentSteamedLevel < maxSteamedLevel)
	{
		currentSteamedLevel++;
		show_debug_message(currentSteamedLevel);
		if(currentSteamedLevel < maxSteamedLevel)
			alarm[0] = timeBetweenIntervals;
	}
}