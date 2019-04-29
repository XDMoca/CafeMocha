if(!spawnerActive)
{
	if(instance_number(obj_customer_party) == 0)
	{
		end_shop_session();
		instance_deactivate_object(id);
	}
}