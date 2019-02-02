enum MilkLevels
{
	Plain = 0,
	LightFoam = 1,
	HeavyFoam = 2,
	OverFoam = 3
}
isOn = false;
timeBetweenLevels = 5 * room_speed;
currentSteamedLevel = 0;
maxSteamedLevel = 3;
currentCupsHeld = 0;
maxCupsCanHold = 2;