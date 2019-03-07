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
leftSprite = spr_customer_1_walk_left;
rightSprite = spr_customer_1_walk_right;
upSprite = spr_customer_1_walk_up;
downSprite = spr_customer_1_walk_down;
#endregion