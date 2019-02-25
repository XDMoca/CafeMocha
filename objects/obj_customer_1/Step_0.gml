if(customerStatus == CustomerStatus.leavingShop)
{
	sprite_index = upSprite;
	if(distance_to_object(CustomerSpawner) < 5)
	{
		customer_has_left(party);
		instance_destroy();
	}
}
else
{
	var deltaX = 0;
	var deltaY = 0;

	if(customerStatus == CustomerStatus.followingPlayer)
	{
		if (targetToFollow.x != walkPathBuffer_x[0]) || (targetToFollow.y != walkPathBuffer_y[0]){
		    //update record of positions
		    //shift records down by one position
		    for(var i = walkPathBufferSize-1; i > 0; i--)
			{
		        walkPathBuffer_x[i] = walkPathBuffer_x[i-1];
		        walkPathBuffer_y[i] = walkPathBuffer_y[i-1];
		    }
		    //record new position
		    walkPathBuffer_x[0] = targetToFollow.x;
		    walkPathBuffer_y[0] = targetToFollow.y;
		}

		var newX = walkPathBuffer_x[distanceFromTarget];
		var newY = walkPathBuffer_y[distanceFromTarget];
		deltaX = newX - x;
		deltaY = newY - y;
		x = newX;
		y = newY;
	}

	if(deltaX != 0)
		direction = deltaX > 0 ? Direction.right : Direction.left;
	if(deltaY != 0)
		direction = deltaY > 0 ? Direction.down : Direction.up;
	if(deltaX == 0 && deltaY == 0)
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
}

depth = -y;