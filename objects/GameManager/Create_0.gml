randomize();

#region Room Transition
targetRoom = rm_shop_closed;
inTransition = true;
currentAlpha = 1;
alphaChangeRate = 0.05;
roomEnteredSound = noone;
width = display_get_width();
height = display_get_height();
#endregion

#region Money
money = 1500;
moneyGained = 0;
#endregion

#region Time Of Day
timeOfDay = TimeOfDay.Night;
#endregion

#region Day Of Week
dayOfWeek = DayOfWeek.Sunday;
#endregion

#region Display
padding = 10;
#endregion