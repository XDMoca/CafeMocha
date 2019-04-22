event_inherited();
trayItems = [];
var interactionManager = InteractionManager_Open;
var yTop = y - (sprite_height/2);
var buttonHeight = sprite_height/interactionManager.maxTrayItems;
for(var i = 0; i<interactionManager.maxTrayItems; i++)
{
	var trayItem = instance_create_layer(x, yTop + (i*buttonHeight), layer_tray_menu, btn_tray_menu_item);
	trayItem.depth = depth-1;
	trayItems[i] = trayItem;
}

hide_tray_menu();