if(!spawnerActive)
{
	if(instance_number(obj_customer_party) == 0)
	{
		toggle_result_screen(true);
		instance_deactivate_object(id);
	}
}