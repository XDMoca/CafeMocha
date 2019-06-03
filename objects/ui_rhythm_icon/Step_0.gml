event_inherited();

if(isFalling)
{
	y = y + fallSpeed;
	if(y > rhythmMarker.y + spriteHeight)
	{
		ds_queue_dequeue(rhythmMarker.icons);
		instance_destroy(self);
	}
}