/// @function hide_tray_menu(objInteractionManager)
/// @description Shows the tray menu
/// @arg objInteractionManager the interaction manager object

var interactionManager = argument0;
var trayMenu = ui_tray_menu_panel;

instance_activate_object(ui_tray_menu_panel);
instance_activate_object(btn_tray_menu_item);

var j = 0;
for(var i = 0; i<interactionManager.maxTrayItems; i++)
{
	if(j < array_length_1d(interactionManager.trayItems))
	{
		trayMenu.trayItems[i].isClickable = true;
		trayMenu.trayItems[i].itemText =  "Cappuccino";
		j++;
	}
	else
	{
		trayMenu.trayItems[i].isClickable = false;
		trayMenu.trayItems[i].itemText =  "";
	}
	trayMenu.trayItems[i].buttonIndex =  i;
}