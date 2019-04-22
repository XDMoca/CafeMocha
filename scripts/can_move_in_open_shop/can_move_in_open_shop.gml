/// @function can_move_in_open_shop()
/// @description Returns a boolean stating if the player can move

if(textbox_exists())
	return false;
	
if(obj_drink_station.isMenuOpen)
	return false;
	
if(instance_exists(ui_tray_menu_panel))
	return false;
	
return true;