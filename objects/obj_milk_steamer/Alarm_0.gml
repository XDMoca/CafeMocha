if(isOn)
{
	if(currentSteamedLevel < maxSteamedLevel)
	{
		currentSteamedLevel++;
		if(currentSteamedLevel < maxSteamedLevel)
		alarm[0] = timeBetweenLevels;
	}
}