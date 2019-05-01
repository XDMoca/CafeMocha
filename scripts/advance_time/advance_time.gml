/// @function advance_time()
/// @description Moves to the next time period of the day

var gameManager = GameManager;

if(gameManager.timeOfDay == TimeOfDay.Night)
{
	gameManager.timeOfDay = TimeOfDay.Morning;
	if(gameManager.dayOfWeek == DayOfWeek.Sunday)
	{
		gameManager.dayOfWeek = DayOfWeek.Monday;
	}
	else
	{
		gameManager.dayOfWeek++;
	}
}
else
{
	gameManager.timeOfDay++;
}