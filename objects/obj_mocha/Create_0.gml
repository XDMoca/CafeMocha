moveSpeed = const_move_speed;
moveX = 0;
moveY = 0;
lastImageIndex = 0;

leftSprite = spr_mocha_walk_left;
rightSprite = spr_mocha_walk_right;
upSprite = spr_mocha_walk_up;
downSprite = spr_mocha_walk_down;

can_move = noone;
if(instance_exists(InteractionManager_Open))
{
	can_move = can_move_in_open_shop;
}
else
{
	can_move = can_move_in_closed_shop;
}

direction = Direction.down;