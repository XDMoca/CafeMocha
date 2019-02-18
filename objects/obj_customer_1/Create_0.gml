direction = Direction.down;
order = Order.Cappuccino;
party = noone;

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