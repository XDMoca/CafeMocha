if(!isMenuOpen)
	return;
	
if(keyboard_check(ord("X")))
{
	isMenuOpen = false;
	instance_deactivate_object(cupDispenser);
	instance_deactivate_object(milkSteamer);
	instance_deactivate_object(kettle);
	instance_deactivate_object(grinder);
}