randomize();

#region RoomTransition
targetRoom = rm_shop_closed;
inTransition = true;
currentAlpha = 1;
alphaChangeRate = 0.05;
roomEnteredSound = snd_door_bell;
width = display_get_width();
height = display_get_height();
#endregion

money = 1500;
moneyGained = 0;