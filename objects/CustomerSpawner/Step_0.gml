if(!spawnerActive)
{
	if(instance_number(obj_customer_party) == 0)
	{
		change_room(rm_shop_closed, snd_door_close);
	}
}