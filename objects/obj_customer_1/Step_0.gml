image_index = 0;

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


	x = walkPathBuffer_x[distanceFromTarget];
	y = walkPathBuffer_y[distanceFromTarget];
}

depth = -y;