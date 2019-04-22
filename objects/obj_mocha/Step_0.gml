#region InputCheck
if(!script_execute(can_move))
{
	leftAxisInput = 0;
	rightAxisInput = 0;
	upAxisInput = 0;
	downAxisInput = 0;
}
else
{
	leftAxisInput = keyboard_check(vk_left);
	rightAxisInput = keyboard_check(vk_right);
	upAxisInput = keyboard_check(vk_up);
	downAxisInput = keyboard_check(vk_down);
}
#endregion

#region Movement and Collision
moveX = (rightAxisInput - leftAxisInput) * moveSpeed;
moveY = (downAxisInput - upAxisInput) * moveSpeed;

if(moveX != 0)
{
	direction = moveX > 0 ? Direction.right : Direction.left;
	if(place_meeting(x+moveX, y, collider))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x+sign(moveX), y, collider)) 
				x+=sign(moveX);
			else break;
		}
		moveX = 0;
	}
}
if(moveY != 0)
{
	direction = moveY > 0 ? Direction.down : Direction.up;
	if(moveY != 0 && place_meeting(x, y+moveY, collider))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x, y+sign(moveY), collider)) 
				y+=sign(moveY);
			else break;
		}
		moveY = 0;
	}
}


if(moveX == 0 && moveY == 0)
{
	image_index = 0;
}
switch(direction)
{
	case Direction.right: sprite_index = rightSprite; break;
	case Direction.up: sprite_index = upSprite; break;
	case Direction.left: sprite_index = leftSprite; break;
	case Direction.down: sprite_index = downSprite; break;
}

x += moveX;
y += moveY;
#endregion

depth = -y;