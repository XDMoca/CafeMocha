/// @function can_move()
/// @description Returns a boolean stating if the player can move

if(textbox_exists())
	return false;
	
if(instance_exists(obj_drink_station))
	if(obj_drink_station.isMenuOpen)
		return false;
	
return true;