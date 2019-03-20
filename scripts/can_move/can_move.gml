/// @function can_move()
/// @description Returns a boolean stating if the player can move

if(textbox_exists())
	return false;
	
if(obj_milk_steamer.isOn)
	return false;
	
return true;