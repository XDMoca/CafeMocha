if(isOn)
{
	if(currentHeatLevel < maxHeatLevel)
	{
		currentHeatLevel++;
		if(currentHeatLevel < maxHeatLevel)
		alarm[0] = timeBetweenLevels;
	}
}
else 
{
	if(currentHeatLevel > 0)
	{
		currentHeatLevel--;
		if(currentHeatLevel > 0)
			alarm[0] = timeBetweenLevels;
	}
}