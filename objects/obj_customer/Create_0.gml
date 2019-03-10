direction = Direction.down;
order = Order.Cappuccino;
party = noone;
satisfactionRating = 0;

#region DrinkVariables
timeToFinishDrink = 5 * room_speed;
#endregion

#region FollowVariables
distanceFromTarget = 12;
targetToFollow = noone;
walkPathBufferSize = 64;
customerStatus = CustomerStatus.waitingForTable;
walkPathBuffer_x = [];
walkPathBuffer_y = [];
#endregion

#region Sprites
leftSprite = noone;
rightSprite = noone;
upSprite = noone;
downSprite = noone;
#endregion